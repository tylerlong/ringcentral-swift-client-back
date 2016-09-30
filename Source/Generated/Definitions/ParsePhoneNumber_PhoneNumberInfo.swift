import Foundation
import ObjectMapper
import Alamofire
open class ParsePhoneNumber_PhoneNumberInfo: Mappable {
    // Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See North American Numbering Plan for details
    open var `areaCode`: String?
    // Information on a country the phone number belongs to
    open var `country`: [ParsePhoneNumber_CountryInfo]?
    // Dialing format of a phone number
    open var `dialable`: String?
    // E.164 (11-digits) format of a phone number
    open var `e164`: String?
    // International format of a phone number
    open var `formattedInternational`: String?
    // Domestic format of a phone number
    open var `formattedNational`: String?
    // One of the numbers to be parsed, passed as a string in response
    open var `originalString`: String?
    // "True" if the number is in a special format (for example N11 code)
    open var `special`: Bool?
    // E.164 (11-digits) format of a phone number without the plus sign ('+')
    open var `normalized`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `areaCode` <- map["areaCode"]
        `country` <- map["country"]
        `dialable` <- map["dialable"]
        `e164` <- map["e164"]
        `formattedInternational` <- map["formattedInternational"]
        `formattedNational` <- map["formattedNational"]
        `originalString` <- map["originalString"]
        `special` <- map["special"]
        `normalized` <- map["normalized"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["areaCode"] = self.areaCode
        result["country"] = self.country
        result["dialable"] = self.dialable
        result["e164"] = self.e164
        result["formattedInternational"] = self.formattedInternational
        result["formattedNational"] = self.formattedNational
        result["originalString"] = self.originalString
        result["special"] = self.special
        result["normalized"] = self.normalized
        return result
    }
}
