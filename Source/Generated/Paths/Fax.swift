import Foundation
import ObjectMapper
import Alamofire
open class Fax: Model {
    public override var pathSegment: String {
        get{
            return "fax"
        }
    }
    // Create and Send Fax Message
    open func post(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    // Create and Send Fax Message
    open func post(parameters: Parameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    // Create and Send Fax Message
    open func post(parameters: PostParameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Recipient information. Phone number property is mandatory. Optional for resend fax request
        open var `to`: [CallerInfo]?
        // Fax resolution
        open var `faxResolution`: String?
        // The datetime to send fax at, in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. If time is not specified, the fax will be send immediately
        open var `sendTime`: String?
        // Optional. Cover page index. If not specified, the default cover page which is configured in "Outbound Fax Settings" is attached. See also 'Available Cover Pages' table below
        open var `coverIndex`: Int?
        // Optional. Cover page text, entered by the fax sender and printed on the cover page. Maximum length is limited to 1024 symbols
        open var `coverPageText`: String?
        // Internal identifier of the original fax message which needs to be resent. Mandatory for resend fax request
        open var `originalMessageId`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `to` <- map["to"]
            `faxResolution` <- map["faxResolution"]
            `sendTime` <- map["sendTime"]
            `coverIndex` <- map["coverIndex"]
            `coverPageText` <- map["coverPageText"]
            `originalMessageId` <- map["originalMessageId"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["to"] = self.to
            result["faxResolution"] = self.faxResolution
            result["sendTime"] = self.sendTime
            result["coverIndex"] = self.coverIndex
            result["coverPageText"] = self.coverPageText
            result["originalMessageId"] = self.originalMessageId
            return result
        }
    }
}
