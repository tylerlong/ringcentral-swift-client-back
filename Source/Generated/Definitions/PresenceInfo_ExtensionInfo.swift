import Foundation
import ObjectMapper
import Alamofire
open class PresenceInfo_ExtensionInfo: Mappable {
    // Internal identifier of an extension
    open var `id`: String?
    // Canonical URI of an extension
    open var `uri`: String?
    // Extension number (usually 3 or 4 digits)
    open var `extensionNumber`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        result["extensionNumber"] = self.extensionNumber
        return result
    }
}
