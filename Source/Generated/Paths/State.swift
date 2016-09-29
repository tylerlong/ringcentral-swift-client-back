import Foundation
import ObjectMapper
open class State: Model {
    public override var pathSegment: String {
        get{
            return "state"
        }
    }
    // Get State/Province List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of states
        open var `records`: [StateInfo]?
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
    // Get State/Province by ID
    open func get(callback: @escaping (_ t: StateInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: StateInfo?, error) in
            callback(t, error)
        }
    }
}
