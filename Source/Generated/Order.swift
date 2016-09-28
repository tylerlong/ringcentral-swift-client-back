import Foundation
import ObjectMapper
open class Order: Model {
    public override var pathSegment: String {
        get{
            return "order"
        }
    }
    // Get Order by ID
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // Identifier of a device
        open var `id`: String?
        // Canonical URI of an order resource
        open var `uri`: String?
        // List of the ordered devices
        open var `devices`: [DeviceInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- map["id"]
            `uri` <- map["uri"]
            `devices` <- map["devices"]
        }
    }
}
