import Foundation
import ObjectMapper
import Alamofire
open class PhoneLinesInfo_PhoneNumberInfo: Mappable {
    // Internal identifier of a phone number
    open var `id`: Int?
    // Brief information on a phone number country
    open var `country`: CountryInfo?
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
    convenience public init(id: Int? = nil, country: CountryInfo? = nil, location: String? = nil, paymentType: String? = nil, phoneNumber: String? = nil, status: String? = nil, type: String? = nil, usageType: String? = nil) {
        self.init()
        self.id = `id`
        self.country = `country`
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
        result["location"] = self.location
        result["paymentType"] = self.paymentType
        result["phoneNumber"] = self.phoneNumber
        result["status"] = self.status
        result["type"] = self.type
        result["usageType"] = self.usageType
        return result
    }
}
