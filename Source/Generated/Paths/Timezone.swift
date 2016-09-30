import Foundation
import ObjectMapper
import Alamofire
open class Timezone: Model {
    public override var pathSegment: String {
        get{
            return "timezone"
        }
    }
    // Get Time Zone List
    open func list(parameters: Parameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of timezones
        open var `records`: [TimezoneInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    // Get Time Zone by ID
    open func get(callback: @escaping (_ t: TimezoneInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: TimezoneInfo?, error) in
            callback(t, error)
        }
    }
}
