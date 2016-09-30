import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_ContactInfo_RegionalSettings: Mappable {
    // Timezone data
    open var `timezone`: ExtensionInfo_Request_ContactInfo_RegionalSettings_Timezone?
    // User interface language data
    open var `language`: ExtensionInfo_Request_ContactInfo_RegionalSettings_Language?
    // Information on language used for telephony greetings
    open var `greetingLanguage`: ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage?
    // Formatting language preferences for numbers, dates and currencies
    open var `formattingLocale`: ExtensionInfo_Request_ContactInfo_RegionalSettings_FormattingLocale?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `timezone` <- map["timezone"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
