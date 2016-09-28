import Foundation
import ObjectMapper
open class CountryInfo: Mappable {
    // Internal identifier of a home country
    open var `id`: String?
    // Canonical URI of a home country
    open var `uri`: String?
    // Official name of a home country
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `name` <- map["name"]
    }
}
