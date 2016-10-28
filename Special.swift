//
//  Special.swift
//  RingCentral
//
//  Created by Tyler Liu on 10/18/16.
//
//

import Alamofire
import ObjectMapper


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

    open func mapping(map: Map) {
        event <- map["event"]
    }

    // todo: improve this part to support aggregated = true and arbitrary parameter order
    open var type: NotificationType? {
        get {
            if let event = self.event {
                switch event {
                case Regex(pattern: "/account/\\d+/extension/\\d+/message-store/instant"):
                    return .InstantMessage
                case Regex(pattern: "/account/\\d+/extension/\\d+/message-store"):
                    return .Message
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence/line/presence\\?detailedTelephonyState=true&sipData=true"),
                     Regex(pattern: "/account/\\d+/extension/\\d+/presence\\?detailedTelephonyState=true&sipData=true"):
                    return .DetailedPresenceWithSIP
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence/line/presence\\?detailedTelephonyState=true"),
                     Regex(pattern: "/account/\\d+/extension/\\d+/presence\\?detailedTelephonyState=true"):
                    return .DetailedPresence
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence/line/presence"):
                    return .Presence
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence/line"):
                    return .PresenceLine
                case Regex(pattern: "/account/\\d+/extension/\\d+/presence"):
                    return .Presence
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
