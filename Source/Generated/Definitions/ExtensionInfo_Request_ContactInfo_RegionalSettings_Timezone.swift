import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_Timezone: Mappable {
    // Timezone identifier. The default value is "58" (US&Canada)
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
