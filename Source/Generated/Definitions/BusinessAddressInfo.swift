import Foundation
import ObjectMapper
import Alamofire
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
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["country"] = self.country
        result["state"] = self.state
        result["city"] = self.city
        result["street"] = self.street
        result["zip"] = self.zip
        return result
    }
}
