import Foundation
import ObjectMapper
open class RingOutInfo: Mappable {
    // Internal identifier of a RingOut call
    open var `id`: String?
    // RingOut status information
    open var `status`: RingOutStatusInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `status` <- map["status"]
    }
}