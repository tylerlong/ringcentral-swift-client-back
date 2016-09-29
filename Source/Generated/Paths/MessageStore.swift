import Foundation
import ObjectMapper
open class MessageStore: Model {
    public override var pathSegment: String {
        get{
            return "message-store"
        }
    }
    open func `content`(_ _id: String? = nil) -> Content {
        return Content(parent: self, _id: _id)
    }
    // Get Message List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of records with message information
        open var `records`: [MessageInfo]?
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
    // Delete Message by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Message by ID
    open func get(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    // Update Message by ID
    open func put(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
}
