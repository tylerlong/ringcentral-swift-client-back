import Foundation
import ObjectMapper
import Alamofire
open class LanguageInfo: Mappable {
    // Internal identifier of a language
    open var `id`: String?
    // Canonical URI of a language
    open var `uri`: String?
    // Indicates whether a language is available as greeting language
    open var `greeting`: Bool?
    // Indicates whether a language is available as formatting locale
    open var `formattingLocale`: Bool?
    // Localization code of a language
    open var `localeCode`: String?
    // Official name of a language
    open var `name`: String?
    // Indicates whether a language is available as UI language
    open var `ui`: Bool?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `greeting` <- map["greeting"]
        `formattingLocale` <- map["formattingLocale"]
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
        `ui` <- map["ui"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
