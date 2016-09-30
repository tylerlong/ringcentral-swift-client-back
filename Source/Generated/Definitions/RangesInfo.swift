import Foundation
import ObjectMapper
import Alamofire
open class RangesInfo: Mappable {
    // Date and time in format YYYY-MM-DD hh:mm
    open var `from`: String?
    // Date and time in format YYYY-MM-DD hh:mm
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
