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
        return [:]
    }
}
