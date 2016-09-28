import Foundation
import ObjectMapper
open class PresetInfo: Mappable {
    // Link to a greeting resource
    open var `uri`: String?
    // Internal identifier of greeting
    open var `id`: String?
    // Name of a greeting
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `name` <- map["name"]
    }
}
