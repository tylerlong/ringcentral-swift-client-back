import Foundation
import ObjectMapper
import Alamofire
open class GreetingLanguageInfo: Mappable {
    // Internal identifier of a greeting language
    open var `id`: String?
    // Localization code of a greeting language
    open var `localeCode`: String?
    // Official name of a greeting language
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
