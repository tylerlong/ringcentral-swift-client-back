import Foundation
import ObjectMapper
open class RuleInfo_ForwardingNumberInfo: Mappable {
    // Link to a forwarding number resource
    open var `uri`: String?
    // Internal identifier of a forwarding number
    open var `id`: String?
    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?
    // Title of a forwarding number
    open var `label`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
    }
}
