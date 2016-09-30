import Foundation
import ObjectMapper
import Alamofire
open class DepartmentInfo: Mappable {
    // Internal identifier of a department extension
    open var `id`: String?
    // Canonical URI of a department extension
    open var `uri`: String?
    // Number of a department extension
    open var `extensionNumber`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
