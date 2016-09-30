import Foundation
import ObjectMapper
import Alamofire
open class Parse: Model {
    public override var pathSegment: String {
        get{
            return "parse"
        }
    }
    // Parse Phone Number
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    open class PostResponse: Mappable {
        // Canonical URI of a resource
        open var `uri`: String?
        // Information on a user home country
        open var `homeCountry`: [ParsePhoneNumber_CountryInfo]?
        // Parsed phone numbers data
        open var `phoneNumbers`: [ParsePhoneNumber_PhoneNumberInfo]?
        // One of the numbers to be parsed, passed as a string in response
        open var `originalString`: String?
        // Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See North American Numbering Plan for details
        open var `areaCode`: String?
        // Domestic format of a phone number
        open var `formattedNational`: String?
        // International format of a phone number
        open var `formattedInternational`: String?
        // Dialing format of a phone number
        open var `dialable`: String?
        // E.164 (11-digits) format of a phone number
        open var `e164`: String?
        // "True" if the number is in a special format (for example N11 code)
        open var `special`: Bool?
        // E.164 (11-digits) format of a phone number without the plus sign ('+')
        open var `normalized`: String?
        // Information on a country the phone number belongs to
        open var `country`: [ParsePhoneNumber_CountryInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `homeCountry` <- map["homeCountry"]
            `phoneNumbers` <- map["phoneNumbers"]
            `originalString` <- map["originalString"]
            `areaCode` <- map["areaCode"]
            `formattedNational` <- map["formattedNational"]
            `formattedInternational` <- map["formattedInternational"]
            `dialable` <- map["dialable"]
            `e164` <- map["e164"]
            `special` <- map["special"]
            `normalized` <- map["normalized"]
            `country` <- map["country"]
        }
        open func toParameters() -> Parameters {
            return [:]
        }
    }
}
