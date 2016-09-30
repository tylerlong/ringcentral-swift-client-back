import Foundation
import ObjectMapper
import Alamofire
open class BusinessHour_ScheduleInfo: Mappable {
    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
