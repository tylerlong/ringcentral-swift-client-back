import Foundation
import ObjectMapper
open class RuleInfo: Mappable {
    // Forwarding number (or group) ordinal
    open var `index`: Int?
    // Number of rings for a forwarding number (or group)
    open var `ringCount`: Int?
    // Forwarding number (or group) data
    open var `forwardingNumbers`: [RuleInfo_ForwardingNumberInfo]?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `index` <- map["index"]
        `ringCount` <- map["ringCount"]
        `forwardingNumbers` <- map["forwardingNumbers"]
    }
}
