import Foundation
import ObjectMapper
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
}
