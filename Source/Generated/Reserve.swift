import Foundation
import ObjectMapper
open class Reserve: Model {
    public override var pathSegment: String {
        get{
            return "reserve"
        }
    }
    // Reserve Phone Number
    func post() -> PostResponse {
        return PostResponse(JSONString: "")!
    }
    open class PostResponse: Mappable {
        // Phone numbers to be reserved/un-reserved
        open var `records`: [ReservePhoneNumber_Response_ReserveRecord]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
        }
    }
}
