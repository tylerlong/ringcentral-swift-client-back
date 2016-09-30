import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage: Mappable {
    // Internal identifier of a greeting language
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
