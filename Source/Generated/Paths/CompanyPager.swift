import Foundation
import ObjectMapper
import Alamofire
open class CompanyPager: Model {
    public override var pathSegment: String {
        get{
            return "company-pager"
        }
    }
    // Create and Send Pager Message
    open func post(parameters: PostParameters? = nil, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters?.toParameters()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    open class PostParameters: Mappable {
        // Sender of a pager message. The extensionNumber property must be filled
        open var `from`: CallerInfo?
        // Internal identifier of a message this message replies to
        open var `replyOn`: Int?
        // Text of a pager message. Max length is 1024 symbols (2-byte UTF-16 encoded). If a character is encoded in 4 bytes in UTF-16 it is treated as 2 characters, thus restricting the maximum message length to 512 symbols
        open var `text`: String?
        // Optional if replyOn parameter is specified. Receiver of a pager message. The extensionNumber property must be filled
        open var `to`: [CallerInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `from` <- map["from"]
            `replyOn` <- map["replyOn"]
            `text` <- map["text"]
            `to` <- map["to"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["from"] = self.from
            result["replyOn"] = self.replyOn
            result["text"] = self.text
            result["to"] = self.to
            return result
        }
    }
}
