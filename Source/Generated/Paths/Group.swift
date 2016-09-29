import Foundation
import ObjectMapper
open class Group: Model {
    public override var pathSegment: String {
        get{
            return "group"
        }
    }
    // Get Contact Group List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of groups
        open var `records`: [GroupInfo]?
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
    // Get Contact Group by ID
    open func get(callback: @escaping (_ t: GroupInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GroupInfo?, error) in
            callback(t, error)
        }
    }
}