import Foundation
import ObjectMapper
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_Language: Mappable {
    // Language identifier. The default value is "1033" (English US)
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
}
