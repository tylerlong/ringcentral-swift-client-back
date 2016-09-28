import Foundation
import ObjectMapper
open class ActiveCalls: Model {
    public override var pathSegment: String {
        get{
            return "active-calls"
        }
    }
    // Get Extension Active (Recent) Calls
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
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
}
