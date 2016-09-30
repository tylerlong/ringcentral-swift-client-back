import Foundation
import ObjectMapper
import Alamofire
open class TimeInterval: Mappable {
    // Time in format hh:mm
    open var `from`: String?
    // Time in format hh:mm
    open var `to`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
