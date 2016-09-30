import Foundation
import ObjectMapper
import Alamofire
open class MeetingScheduleInfo_TimezoneInfo: Mappable {
    // Identifier of a timezone
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        return result
    }
}
