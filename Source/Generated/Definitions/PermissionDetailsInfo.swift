import Foundation
import ObjectMapper
import Alamofire
open class PermissionDetailsInfo: Mappable {
    // Information on a permission checked
    open var `permission`: UserPermissionInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
