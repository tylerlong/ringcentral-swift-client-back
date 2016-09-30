import Foundation
import ObjectMapper
import Alamofire
open class PermissionInfo: Mappable {
    // Specifies if a permission is enabled or not
    open var `enabled`: Bool?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["enabled"] = self.enabled
        return result
    }
}
