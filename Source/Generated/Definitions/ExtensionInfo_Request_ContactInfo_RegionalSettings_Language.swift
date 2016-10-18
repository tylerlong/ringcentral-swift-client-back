import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_Language: Mappable {
    // Language identifier. The default value is "1033" (English US)
    open var `id`: String?
    public init() {
    }
    convenience public init(id: String? = nil) {
        self.init()
        self.id = `id`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        return result
    }
}
