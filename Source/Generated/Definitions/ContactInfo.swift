import Foundation
import ObjectMapper
import Alamofire
open class ContactInfo: Mappable {
    // For User extension type only. Extension user first name
    open var `firstName`: String?
    // For User extension type only. Extension user last name
    open var `lastName`: String?
    // Extension user company name
    open var `company`: String?
    // Email of extension user
    open var `email`: String?
    // Extension user contact phone number
    open var `businessPhone`: String?
    // Business address of extension user company
    open var `businessAddress`: ContactAddressInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `company` <- map["company"]
        `email` <- map["email"]
        `businessPhone` <- map["businessPhone"]
        `businessAddress` <- map["businessAddress"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
