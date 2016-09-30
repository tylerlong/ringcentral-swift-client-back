import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_PartnerId: Mappable {
    // Extension partner identifier
    open var `partnerId`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `partnerId` <- map["partnerId"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["partnerId"] = self.partnerId
        return result
    }
}
