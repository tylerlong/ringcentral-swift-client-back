import Foundation
import ObjectMapper
open class PermissionDetailsInfo: Mappable {
    // Information on a permission checked
    open var `permission`: UserPermissionInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
    }
}
