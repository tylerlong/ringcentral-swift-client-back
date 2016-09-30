import Foundation
import ObjectMapper
import Alamofire
open class VoicemailInfo: Mappable {
    // If 'True' then voicemails are allowed to be received
    open var `enabled`: Bool?
    // Recipient data
    open var `recipient`: RecipientInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `recipient` <- map["recipient"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["enabled"] = self.enabled
        result["recipient"] = self.recipient
        return result
    }
}
