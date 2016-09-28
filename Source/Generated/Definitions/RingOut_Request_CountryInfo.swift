import Foundation
import ObjectMapper
open class RingOut_Request_CountryInfo: Mappable {
    // Dialing plan country identifier
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
}
