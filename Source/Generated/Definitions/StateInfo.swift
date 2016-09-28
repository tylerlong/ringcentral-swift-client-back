import Foundation
import ObjectMapper
open class StateInfo: Mappable {
    // Internal identifier of a state
    open var `id`: String?
    // Canonical URI of a state
    open var `uri`: String?
    // Information on a country the state belongs to
    open var `country`: StateInfo_CountryInfo?
    // Short code for a state (2-letter usually)
    open var `isoCode`: String?
    // Official name of a state
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `country` <- map["country"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
    }
}
