import Foundation
import ObjectMapper
import Alamofire
open class ReservePhoneNumber_Response_ReserveRecord: Mappable {
    // Phone number in E.164 format without a '+'
    open var `phoneNumber`: String?
    // Domestic format of a phone number
    open var `formattedNumber`: String?
    // The datetime up to which the number is reserved in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. No value means that number is not reserved anymore
    open var `reservedTill`: String?
    // Internal identifier of phone number reservation; encoded data including reservation type (by brand, by account, by session), particular brand/account/session data, and reservation date and time
    open var `reservationId`: String?
    // Phone number status
    open var `status`: String?
    // The error code in case of reservation/un-reservation failure
    open var `error`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `reservedTill` <- map["reservedTill"]
        `reservationId` <- map["reservationId"]
        `status` <- map["status"]
        `error` <- map["error"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["phoneNumber"] = self.phoneNumber
        result["formattedNumber"] = self.formattedNumber
        result["reservedTill"] = self.reservedTill
        result["reservationId"] = self.reservationId
        result["status"] = self.status
        result["error"] = self.error
        return result
    }
}
