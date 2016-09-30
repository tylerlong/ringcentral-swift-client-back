import Foundation
import ObjectMapper
import Alamofire
open class LookUpPhoneNumber_PhoneNumberInfo: Mappable {
    // Phone number in E.164 format without a '+'
    open var `phoneNumber`: String?
    // Phone number formatted according to current brand's default country
    open var `formattedNumber`: String?
    // Vanity pattern for this number. Returned only when vanity search option is requested. Vanity pattern corresponds to request parameters nxx plus line or numberPattern
    open var `vanityPattern`: String?
    // The value is returned if the extendedSearch parameter is true. '10' is the closest match
    open var `rank`: Int?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `vanityPattern` <- map["vanityPattern"]
        `rank` <- map["rank"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["phoneNumber"] = self.phoneNumber
        result["formattedNumber"] = self.formattedNumber
        result["vanityPattern"] = self.vanityPattern
        result["rank"] = self.rank
        return result
    }
}
