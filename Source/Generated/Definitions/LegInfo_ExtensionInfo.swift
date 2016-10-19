import Foundation
import ObjectMapper
import Alamofire
open class LegInfo_ExtensionInfo: Mappable {
    // Internal identifier of an extension
    open var `id`: Int?
    // Canonical URI of an extension
    open var `uri`: String?
    public init() {
    }
    convenience public init(id: Int? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
