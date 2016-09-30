import Foundation
import ObjectMapper
import Alamofire
open class FormattingLocaleInfo: Mappable {
    // Internal identifier of a formatting language
    open var `id`: String?
    // Localization code of a formatting language
    open var `localeCode`: String?
    // Official name of a formatting language
    open var `name`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["localeCode"] = self.localeCode
        result["name"] = self.name
        return result
    }
}
