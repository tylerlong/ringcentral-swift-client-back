import Foundation
import ObjectMapper
open class ShippingMethod: Mappable {
    // Method identifier. The default value is "1" (Ground)
    open var `id`: String?
    // Method name, corresponding to the identifier
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
    }
}
