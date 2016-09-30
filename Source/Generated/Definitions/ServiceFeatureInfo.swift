import Foundation
import ObjectMapper
import Alamofire
open class ServiceFeatureInfo: Mappable {
    // Feature name, see all available values in Service Feature List
    open var `featureName`: String?
    // Feature status, shows feature availability for the extension
    open var `enabled`: Bool?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `featureName` <- map["featureName"]
        `enabled` <- map["enabled"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["featureName"] = self.featureName
        result["enabled"] = self.enabled
        return result
    }
}
