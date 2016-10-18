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
    open func list(parameters: ListParameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters?.toParameters()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListParameters: Mappable {
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: String?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["page"] = self.page
            result["perPage"] = self.perPage
            return result
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
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["records"] = self.records
            result["navigation"] = self.navigation
            result["paging"] = self.paging
            return result
        }
    }
    // Get Time Zone by ID
    open func get(callback: @escaping (_ t: TimezoneInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: TimezoneInfo?, error) in
            callback(t, error)
        }
    }
}
