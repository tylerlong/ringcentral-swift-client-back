import Foundation
import ObjectMapper
import Alamofire
open class TargetServicePlanInfo: Mappable {
    // Internal identifier of a target service plan
    open var `id`: String?
    // Name of a target service plan
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
