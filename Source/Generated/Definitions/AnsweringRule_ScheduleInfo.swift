import Foundation
import ObjectMapper
open class AnsweringRule_ScheduleInfo: Mappable {
    // Weekly schedule. If specified, ranges cannot be specified
    open var `weeklyRanges`: WeeklyScheduleInfo?
    // Specific data ranges. If specified, weeklyRanges cannot be specified
    open var `ranges`: RangesInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
    }
}
