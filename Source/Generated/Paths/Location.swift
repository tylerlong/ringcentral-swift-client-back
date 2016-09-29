import Foundation
import ObjectMapper
open class Location: Model {
    public override var pathSegment: String {
        get{
            return "location"
        }
    }
    // Get Location List
    open func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // List of locations
        open var `records`: [LocationInfo]?
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
