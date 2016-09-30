import Foundation
import ObjectMapper
import Alamofire
open class ContactAddressInfo: Mappable {
    // Country name of extension user company. Not returned for Address Book
    open var `country`: String?
    // State/province name of extension user company
    open var `state`: String?
    // City name of extension user company
    open var `city`: String?
    // Street address of extension user company
    open var `street`: String?
    // Zip code of extension user company
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
