import Foundation
import ObjectMapper
open class PermissionInfo: Mappable {
    // Specifies if a permission is enabled or not
    open var `enabled`: Bool?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
    }
}
