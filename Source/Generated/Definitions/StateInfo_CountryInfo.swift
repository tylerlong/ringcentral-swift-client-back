import Foundation
import ObjectMapper
import Alamofire
open class StateInfo_CountryInfo: Mappable {
    // Internal identifier of a state
    open var `id`: String?
    // Canonical URI of a state
    open var `uri`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil) {
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
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        return result
    }
}
