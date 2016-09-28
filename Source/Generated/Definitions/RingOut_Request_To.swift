import Foundation
import ObjectMapper
open class RingOut_Request_To: Mappable {
    // Phone number in E.164 format
    open var `phoneNumber`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
}
