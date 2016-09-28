import Foundation
import ObjectMapper
open class BusinessAddressInfo: Mappable {
    // Name of a country
    open var `country`: String?
    // Name of a state/province
    open var `state`: String?
    // Name of a city
    open var `city`: String?
    // Street address
    open var `street`: String?
    // Zip code
    open var `zip`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `country` <- map["country"]
        `state` <- map["state"]
        `city` <- map["city"]
        `street` <- map["street"]
        `zip` <- map["zip"]
    }
}
