import Foundation
import ObjectMapper
import Alamofire
open class MeetingScheduleInfo: Mappable {
    // Start time of a meeting in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `startTime`: String?
    // Duration of a meeting in minutes
    open var `durationInMinutes`: Int?
    // Timezone of a meeting
    open var `timeZone`: MeetingScheduleInfo_TimezoneInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `startTime` <- map["startTime"]
        `durationInMinutes` <- map["durationInMinutes"]
        `timeZone` <- map["timeZone"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["startTime"] = self.startTime
        result["durationInMinutes"] = self.durationInMinutes
        result["timeZone"] = self.timeZone
        return result
    }
}
