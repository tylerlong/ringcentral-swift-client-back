import Foundation
import ObjectMapper
import Alamofire
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
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["name"] = self.name
        result["durationUnit"] = self.durationUnit
        result["duration"] = self.duration
        result["type"] = self.type
        return result
    }
}
