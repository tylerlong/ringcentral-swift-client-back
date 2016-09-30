import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_Provision_ContactInfo: Mappable {
    // Mandatory. Extension user first name
    open var `firstName`: String?
    // Mandatory. Extension user last name
    open var `lastName`: String?
    // Mandatory. Extension user contact email
    open var `email`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `email` <- map["email"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["firstName"] = self.firstName
        result["lastName"] = self.lastName
        result["email"] = self.email
        return result
    }
}
