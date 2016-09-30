import Foundation
import ObjectMapper
import Alamofire
open class ForwardingNumberInfo: Mappable {
    // Internal identifier of a forwarding/call flip phone number
    open var `id`: String?
    // Canonical URI of a forwarding/call flip phone number
    open var `uri`: String?
    // Forwarding/Call flip phone number
    open var `phoneNumber`: String?
    // Forwarding/Call flip number title
    open var `label`: String?
    // Type of option this phone number is used for. Multiple values are accepted
    open var `features`: String?
    // Number assigned to the call flip phone number, corresponds to the shortcut dial number
    open var `flipNumber`: Int?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `features` <- map["features"]
        `flipNumber` <- map["flipNumber"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        result["phoneNumber"] = self.phoneNumber
        result["label"] = self.label
        result["features"] = self.features
        result["flipNumber"] = self.flipNumber
        return result
    }
}
