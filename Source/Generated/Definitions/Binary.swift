import Foundation
import ObjectMapper
import Alamofire
open class Binary: Mappable {
    // Required. Binary data.
    open var `data`: Data?
    public init() {
    }
    convenience public init(data: Data? = nil) {
        self.init()
        self.data = `data`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `data` <- map["data"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["data"] = self.data
        return result
    }
}
