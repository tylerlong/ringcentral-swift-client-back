import Foundation
import ObjectMapper
open class ServicePlanInfo: Mappable {
    // Internal identifier of a service plan
    open var `id`: String?
    // Name of a service plan
    open var `name`: String?
    // Edition of a service plan
    open var `edition`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `edition` <- map["edition"]
    }
}