import Foundation
import ObjectMapper
import Alamofire
open class RegionalSettings: Mappable {
    // Extension country information
    open var `homeCountry`: CountryInfo?
    // Extension timezone information
    open var `timezone`: TimezoneInfo?
    // User interface language data
    open var `language`: LanguageInfo?
    // Information on language used for telephony greetings
    open var `greetingLanguage`: GreetingLanguageInfo?
    // Formatting language preferences for numbers, dates and currencies
    open var `formattingLocale`: FormattingLocaleInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `homeCountry` <- map["homeCountry"]
        `timezone` <- map["timezone"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["homeCountry"] = self.homeCountry
        result["timezone"] = self.timezone
        result["language"] = self.language
        result["greetingLanguage"] = self.greetingLanguage
        result["formattingLocale"] = self.formattingLocale
        return result
    }
}
