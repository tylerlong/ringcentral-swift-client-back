import Foundation
import ObjectMapper
import Alamofire
open class Page: Mappable {
    // Canonical URI for the page
    open var `uri`: String?
    public init() {
    }
    convenience public init(uri: String? = nil) {
        self.init()
        self.uri = `uri`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["uri"] = self.uri
        return result
    }
}
