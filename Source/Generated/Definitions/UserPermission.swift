import Foundation
import ObjectMapper
open class UserPermission: Mappable {
    // Information on a permission granted
    open var `permission`: UserPermissionInfo?
    // List of active scopes for permission
    open var `scopes`: [String]?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
        `scopes` <- map["scopes"]
    }
}
