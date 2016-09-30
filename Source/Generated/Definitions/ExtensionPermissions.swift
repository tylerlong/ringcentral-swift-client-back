import Foundation
import ObjectMapper
import Alamofire
open class ExtensionPermissions: Mappable {
    // Admin permission
    open var `admin`: PermissionInfo?
    // International Calling permission
    open var `internationalCalling`: PermissionInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `admin` <- map["admin"]
        `internationalCalling` <- map["internationalCalling"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
