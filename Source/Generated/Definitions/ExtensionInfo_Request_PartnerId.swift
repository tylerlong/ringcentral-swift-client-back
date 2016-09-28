import Foundation
import ObjectMapper
open class ExtensionInfo_Request_PartnerId: Mappable {
    // Extension partner identifier
    open var `partnerId`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `partnerId` <- map["partnerId"]
    }
}
