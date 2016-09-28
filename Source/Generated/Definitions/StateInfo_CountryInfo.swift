import Foundation
import ObjectMapper
open class StateInfo_CountryInfo: Mappable {
    // Internal identifier of a state
    open var `id`: String?
    // Canonical URI of a state
    open var `uri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
    }
}
