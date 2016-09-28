import Foundation
import ObjectMapper
open class UserPermissionInfo: Mappable {
    // Internal identifier of a permission
    open var `id`: String?
    // Canonical URI of a permission resource
    open var `uri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
    }
}
