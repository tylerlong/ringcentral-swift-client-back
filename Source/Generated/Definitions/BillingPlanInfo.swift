import Foundation
import ObjectMapper
open class BillingPlanInfo: Mappable {
    // Internal identifier of a billing plan
    open var `id`: String?
    // Billing plan name
    open var `name`: String?
    // Duration period
    open var `durationUnit`: String?
    // Number of duration units
    open var `duration`: String?
    // Billing plan type
    open var `type`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `durationUnit` <- map["durationUnit"]
        `duration` <- map["duration"]
        `type` <- map["type"]
    }
}
