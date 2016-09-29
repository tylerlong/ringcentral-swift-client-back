import Foundation
import ObjectMapper
open class ForwardingNumber: Model {
    public override var pathSegment: String {
        get{
            return "forwarding-number"
        }
    }
    // Add New Forwarding Number
    open func post() -> ForwardingNumberInfo {
        return ForwardingNumberInfo(JSONString: "")!
    }
    // Get Forwarding Numbers
    open func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // List of forwarding phone numbers
        open var `records`: [ForwardingNumberInfo]?
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
