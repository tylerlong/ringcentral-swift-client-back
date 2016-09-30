import Foundation
import ObjectMapper
import Alamofire
open class Binary: Mappable {
    // Required. Binary data.
    open var `data`: Data?
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
