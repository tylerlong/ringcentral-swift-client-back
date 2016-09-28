import Foundation
import ObjectMapper
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_FormattingLocale: Mappable {
    // Internal identifier of a formatting language
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
}
