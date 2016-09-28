import Foundation
import ObjectMapper
open class MeetingScheduleInfo_TimezoneInfo: Mappable {
    // Identifier of a timezone
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
}
