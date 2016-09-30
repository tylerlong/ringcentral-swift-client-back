import Foundation
import ObjectMapper
import Alamofire
open class Conferencing_Request_PhoneNumber: Mappable {
    // Dial-in phone number to connect to a conference
    open var `phoneNumber`: String?
    // 'True' if the number is default for the conference. Default conference number is a domestic number that can be set by user (otherwise it is set by the system). Only one default number per country is allowed
    open var `default`: Bool?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `default` <- map["default"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["phoneNumber"] = self.phoneNumber
        result["default"] = self.default
        return result
    }
}
