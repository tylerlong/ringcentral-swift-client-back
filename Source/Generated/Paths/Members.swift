import Foundation
import ObjectMapper
open class Members: Model {
    public override var pathSegment: String {
        get{
            return "members"
        }
    }
    // Get Department Members
    open func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // List of extensions belonging to a given department
        open var `records`: [Department_Response_ExtensionInfo]?
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
