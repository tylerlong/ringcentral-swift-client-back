import Foundation
import ObjectMapper
open class Device: Model {
    public override var pathSegment: String {
        get{
            return "device"
        }
    }
    // Get Extension Device List
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // List of extension devices
        open var `records`: [DeviceInfo]?
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
