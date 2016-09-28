import Foundation
import ObjectMapper
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
}
