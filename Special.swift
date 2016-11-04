//
//  Special.swift
//  RingCentral
//
//  Created by Tyler Liu on 10/18/16.
//
//

import Alamofire
import ObjectMapper


// upload profile image
extension ProfileImagePath {
    open func put(imageData: Data, imageFileName: String, callback: @escaping (_ error: HTTPError?) -> Void) {
        var headers: [String: String] = [:]
        if rc.token != nil {
            headers["Authorization"] = "Bearer \(rc.token!.access_token!)"
        }
        let ext = NSURL(fileURLWithPath: imageFileName).pathExtension
        Alamofire.upload(
            multipartFormData: { multipartFormData in
                multipartFormData.append(imageData, withName: "image", fileName: imageFileName, mimeType: "image/\(ext ?? "png")")
        },
            to: self.url(withId: false),
            headers: headers,
            encodingCompletion: { encodingResult in
                switch encodingResult {
                case .success(let upload, _, _):
                    upload.responseString { response in
                        if 204 == response.response!.statusCode {
                            callback(nil)
                        } else {
                            callback(HTTPError(statusCode: response.response!.statusCode, message: response.result.value!))
                        }
                    }
                case .failure(_):
                    callback(HTTPError(statusCode: -1, message: "error encoding multipartFormData"))
                }
        }
        )
    }

    open func post(imageData: Data, imageFileName: String, callback: @escaping (_ error: HTTPError?) -> Void) {
        put(imageData: imageData, imageFileName: imageFileName, callback: callback)
    }
}


// Extension put requestBody is an enum
public protocol ExtensionParameters {
    func toParameters() -> Parameters
}
extension ExtensionInfo_Request_StatusInfo: ExtensionParameters {
}
extension ExtensionInfo_Request_ContactInfo: ExtensionParameters {
}
extension ExtensionInfo_Request_PasswordPIN: ExtensionParameters {
}
extension ExtensionInfo_Request_PartnerId: ExtensionParameters {
}
extension ExtensionInfo_Request_Provision: ExtensionParameters {
}


// Subscription notification models
public protocol INotification: Mappable {
}
public enum NotificationType: String {
    case DetailedPresence, DetailedPresenceWithSIP, ExtensionInfo, ExtensionList, IncomingCall, InstantMessage, Message, PresenceLine, Presence
}
extension DetailedPresenceNotification: INotification {
}
extension DetailedPresenceWithSIPNotification: INotification {
}
extension ExtensionInfoNotification: INotification {
}
extension ExtensionListNotification: INotification {
}
extension IncomingCallNotification: INotification {
}
extension InstantMessageNotification: INotification {
}
extension MessageNotification: INotification {
}
extension PresenceLineNotification: INotification {
}
extension PresenceNotification: INotification {
}
open class Notification: INotification {
    open var event: String?
    open var json: String?

    required public init?(map: Map) {

    }

    convenience public init?(json: String) {
        self.init(JSONString: json)
        self.json = json
    }

    open func mapping(map: Map) {
        event <- map["event"]
    }

    private func presenceType() -> NotificationType? {
        if let event = self.event {
            let urlComponents = NSURLComponents(string: event)!
            let queryItems = urlComponents.queryItems
            var result: NotificationType = .Presence
            if let _ = queryItems?.filter({$0.name == "detailedTelephonyState"}).first {
                result = .DetailedPresence
            }
            if let _ = queryItems?.filter({$0.name == "sipData"}).first {
                result = .DetailedPresenceWithSIP
            }
            return result
        }
        return nil
    }
    open var type: NotificationType? {
        get {
            if let event = self.event {
                switch event {
                case Regex(pattern: "/account/\\d+/extension/\\d+/message-store/instant"):
                    return .InstantMessage
                case Regex(pattern: "/account/\\d+/extension/\\d+/message-store"):
                    return .Message
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence/line/presence"):
                    return presenceType()
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence/line"):
                    return .PresenceLine
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence"):
                    return presenceType()
                case Regex(pattern: "/account/\\d+/extension/\\d+/incoming-call-pickup"):
                    return .IncomingCall
                case Regex(pattern: "/account/\\d+/extension/\\d+"):
                    return .ExtensionInfo
                case Regex(pattern: "account/\\d+/extension"):
                    return .ExtensionList
                default:
                    return nil
                }
            }
            return nil
        }
    }

    // todo: any better way ? such as `as!` ?
    open func downcast<T: INotification>() -> T? {
        if let json = self.json {
            return T(JSONString: json)
        }
        return nil
    }
}



// Utils
struct Regex {
    let pattern: String
    let options: NSRegularExpression.Options!

    private var matcher: NSRegularExpression {
        return try! NSRegularExpression(pattern: self.pattern, options: self.options)
    }
    init(pattern: String, options: NSRegularExpression.Options = NSRegularExpression.Options.useUnixLineSeparators) {
        self.pattern = pattern
        self.options = options
    }
    func match(string: String, options: NSRegularExpression.MatchingOptions = NSRegularExpression.MatchingOptions.reportCompletion) -> Bool {
        return self.matcher.numberOfMatches(in: string, options: options, range: NSMakeRange(0, string.utf16.count)) != 0
    }
}
protocol RegularExpressionMatchable {
    func match(regex: Regex) -> Bool
}

extension String: RegularExpressionMatchable {
    func match(regex: Regex) -> Bool {
        return regex.match(string: self)
    }
}
func ~=<T: RegularExpressionMatchable>(pattern: Regex, matchable: T) -> Bool {
    return matchable.match(regex: pattern)
}
