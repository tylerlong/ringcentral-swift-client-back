import Foundation
import ObjectMapper
open class CallLog: Model {
    public override var pathSegment: String {
        get{
            return "call-log"
        }
    }
    // Get Account Call Log
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of call log records
        open var `records`: [CallLogRecord]?
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
    // Get Account Call Log Record by ID
    open func get(callback: @escaping (_ t: CallLogInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CallLogInfo?, error) in
            callback(t, error)
        }
    }
    // Delete Extension Call Log
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
