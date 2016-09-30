import Foundation
import ObjectMapper
import Alamofire
open class StatusInfo: Mappable {
    // A free-form user comment, describing the status change reason
    open var `comment`: String?
    // Type of suspension
    open var `reason`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `comment` <- map["comment"]
        `reason` <- map["reason"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
