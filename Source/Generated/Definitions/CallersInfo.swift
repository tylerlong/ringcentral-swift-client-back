import Foundation
import ObjectMapper
open class CallersInfo: Mappable {
    // Phone number of a caller
    open var `callerId`: String?
    // Contact name of a caller
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `callerId` <- map["callerId"]
        `name` <- map["name"]
    }
}
