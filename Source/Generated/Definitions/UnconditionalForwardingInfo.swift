import Foundation
import ObjectMapper
open class UnconditionalForwardingInfo: Mappable {
    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
}