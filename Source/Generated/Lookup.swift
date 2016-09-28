import Foundation
import ObjectMapper
open class Lookup: Model {
    public override var pathSegment: String {
        get{
            return "lookup"
        }
    }
    // Look up Phone Number
    func post() -> PostResponse {
        return PostResponse(JSONString: "")!
    }
    open class PostResponse: Mappable {
        // Canonical URI of the phone numbers resource
        open var `uri`: String?
        // List of phone numbers filtered by the specified criteria
        open var `records`: [LookUpPhoneNumber_PhoneNumberInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
        }
    }
}
