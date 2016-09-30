import Foundation
import ObjectMapper
import Alamofire
open class DialInNumbers_CountryInfo: Mappable {
    // Internal identifier of a country
    open var `id`: String?
    // Canonical URI of a country
    open var `uri`: String?
    // Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    open var `callingCode`: String?
    // Country code according to the ISO standard, see ISO 3166
    open var `isoCode`: String?
    // Official name of a country
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
