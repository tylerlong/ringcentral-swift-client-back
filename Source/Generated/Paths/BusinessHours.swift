import Foundation
import ObjectMapper
open class BusinessHours: Model {
    public override var pathSegment: String {
        get{
            return "business-hours"
        }
    }
    // Get User Hours Setting
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // Canonical URI of a business-hours resource
        open var `uri`: String?
        // Schedule when an answering rule is applied
        open var `schedule`: BusinessHour_ScheduleInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `schedule` <- map["schedule"]
        }
    }
}
