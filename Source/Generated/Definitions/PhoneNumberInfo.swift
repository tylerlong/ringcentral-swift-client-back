import Foundation
import ObjectMapper
import Alamofire
open class PhoneNumberInfo: Mappable {
    // Internal identifier of a phone number
    open var `id`: Int?
    // Brief information on a phone number country
    open var `country`: CountryInfo?
    // Information on the extension, to which the phone number is assigned. Returned only for the request of Account phone number list
    open var `extension`: PhoneNumberInfo_ExtensionInfo?
    // Indicates if this phone number is enabled to appear as CallerId and/or to send outbound SMS from it. Returned only for the request of Extension phone number list
    open var `features`: [String]?
    // Location (City, State). Filled for local US numbers
    open var `location`: String?
    // Payment type. 'External' is returned for forwarded numbers which are not terminated in the RingCentral phone system
    open var `paymentType`: String?
    // Phone number
    open var `phoneNumber`: String?
    // Status of a phone number. If the value is 'Normal', the phone number is ready to be used. Otherwise it is an external number not yet ported to RingCentral
    open var `status`: String?
    // Phone number type
    open var `type`: String?
    // Usage type of the phone number
    open var `usageType`: String?
    public init() {
    }
    convenience public init(id: Int? = nil, country: CountryInfo? = nil, extension: PhoneNumberInfo_ExtensionInfo? = nil, features: [String]? = nil, location: String? = nil, paymentType: String? = nil, phoneNumber: String? = nil, status: String? = nil, type: String? = nil, usageType: String? = nil) {
        self.init()
        self.id = `id`
        self.country = `country`
        self.extension = `extension`
        self.features = `features`
        self.location = `location`
        self.paymentType = `paymentType`
        self.phoneNumber = `phoneNumber`
        self.status = `status`
        self.type = `type`
        self.usageType = `usageType`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `country` <- map["country"]
        `extension` <- map["extension"]
        `features` <- map["features"]
        `location` <- map["location"]
        `paymentType` <- map["paymentType"]
        `phoneNumber` <- map["phoneNumber"]
        `status` <- map["status"]
        `type` <- map["type"]
        `usageType` <- map["usageType"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["country"] = self.country
        result["extension"] = self.extension
        result["features"] = self.features
        result["location"] = self.location
        result["paymentType"] = self.paymentType
        result["phoneNumber"] = self.phoneNumber
        result["status"] = self.status
        result["type"] = self.type
        result["usageType"] = self.usageType
        return result
    }
}
