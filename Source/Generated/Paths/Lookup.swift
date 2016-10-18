import Foundation
import ObjectMapper
import Alamofire
open class Lookup: Model {
    public override var pathSegment: String {
        get{
            return "lookup"
        }
    }
    // Look up Phone Number
    open func post(callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // Look up Phone Number
    open func post(parameters: Parameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // Look up Phone Number
    open func post(parameters: PostParameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Area code of the location
        open var `areaCode`: Int?
        // Two-letter country code, complying with the ISO standard
        open var `countryCode`: String?
        // Internal identifier of a country; '1'- the US; '39' - Canada; '224' - the UK. The default value is '1'
        open var `countryId`: String?
        // A string of digits (one and more) that should not appear among the last four digits (line part) of the phone numbers that will be returned. It is possible to specify several exclude parameters. If specified, it is taken into account in all returned phone numbers both in the phone numbers satisfying to parameters of lookup and in alternative phone numbers (in case when extendedSearch is specified)
        open var `exclude`: String?
        // If the value is 'False', then the returned numbers exactly correspond to the specified NXX, NPA and LINE or countryCode, areaCode and numberPattern parameters. If the value is 'True', then the resulting numbers are ranked and returned with the rank attribute values (1-10). The default value is 'False'
        open var `extendedSearch`: Bool?
        // LINE pattern for vanity or wildcard search. Digits, Latin characters and asterisks are allowed (usually 4 characters)
        open var `line`: String?
        // Phone number pattern (for wildcard or vanity search). For NANP countries (US, Canada) is concatenation of nxx (the first three digits) and line. If the first three characters are specified as not digits (e.g. 5** or CAT) then parameter extendedSearch will be ignored.
        open var `numberPattern`: String?
        // NXX pattern for vanity or wildcard search. Digits, Latin characters and asterisks are allowed (usually 3 characters)
        open var `nxx`: String?
        // Area code (mandatory). For example, 800, 844, 855, 866, 877, 888 for North America; and 647 for Canada
        open var `npa`: String?
        // Payment type. Default is 'Local' (it should correlate with the npa provided)
        open var `paymentType`: String?
        // Indicates the page size (number of items). If not specified, the value is '10' by default
        open var `perPage`: Int?
        // Specifies if SMS activation is available for the number. If specified, it is taken into account in all returned phone numbers both in the phone numbers satisfying to parameters of lookup and in alternative phone numbers (in case when extendedSearch is specified). If not specified, the value is null.
        open var `smsEnabled`: Bool?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `areaCode` <- map["areaCode"]
            `countryCode` <- map["countryCode"]
            `countryId` <- map["countryId"]
            `exclude` <- map["exclude"]
            `extendedSearch` <- map["extendedSearch"]
            `line` <- map["line"]
            `numberPattern` <- map["numberPattern"]
            `nxx` <- map["nxx"]
            `npa` <- map["npa"]
            `paymentType` <- map["paymentType"]
            `perPage` <- map["perPage"]
            `smsEnabled` <- map["smsEnabled"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["areaCode"] = self.areaCode
            result["countryCode"] = self.countryCode
            result["countryId"] = self.countryId
            result["exclude"] = self.exclude
            result["extendedSearch"] = self.extendedSearch
            result["line"] = self.line
            result["numberPattern"] = self.numberPattern
            result["nxx"] = self.nxx
            result["npa"] = self.npa
            result["paymentType"] = self.paymentType
            result["perPage"] = self.perPage
            result["smsEnabled"] = self.smsEnabled
            return result
        }
    }
    open class PostResponse: Mappable {
        // Canonical URI of the phone numbers resource
        open var `uri`: String?
        // List of phone numbers filtered by the specified criteria
        open var `records`: [LookUpPhoneNumber_PhoneNumberInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["uri"] = self.uri
            result["records"] = self.records
            return result
        }
    }
}
