import Foundation
import ObjectMapper
import Alamofire
open class ScheduleInfo: Mappable {
    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?
    // Specific data ranges
    open var `ranges`: RangesInfo?
    // The user's schedule specified for business hours or after hours; it can also be set/retrieved calling the corresponding method
    open var `ref`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
        `ref` <- map["ref"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["weeklyRanges"] = self.weeklyRanges
        result["ranges"] = self.ranges
        result["ref"] = self.ref
        return result
    }
}
