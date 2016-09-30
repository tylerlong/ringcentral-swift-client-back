import Foundation
import ObjectMapper
import Alamofire
open class FullCountryInfo: Mappable {
    // Internal identifier of a country
    open var `id`: String?
    // Canonical URI of a country
    open var `uri`: String?
    // Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    open var `callingCode`: String?
    // Emergency calling feature availability/emergency address requirement indicator
    open var `emergencyCalling`: Bool?
    // Country code according to the ISO standard, see ISO 3166
    open var `isoCode`: String?
    // Official name of a country
    open var `name`: String?
    // Determines whether phone numbers are available for a country
    open var `numberSelling`: Bool?
    // Specifies whether login with the phone numbers of this country is enabled or not
    open var `loginAllowed`: Bool?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `emergencyCalling` <- map["emergencyCalling"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
        `numberSelling` <- map["numberSelling"]
        `loginAllowed` <- map["loginAllowed"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        result["callingCode"] = self.callingCode
        result["emergencyCalling"] = self.emergencyCalling
        result["isoCode"] = self.isoCode
        result["name"] = self.name
        result["numberSelling"] = self.numberSelling
        result["loginAllowed"] = self.loginAllowed
        return result
    }
}
