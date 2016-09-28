import Foundation
import ObjectMapper
open class Authorize: Model {
    public override var pathSegment: String {
        get{
            return "authorize"
        }
    }
    // OAuth2 Authorize
    func post() -> PostResponse {
        return PostResponse(JSONString: "")!
    }
    open class PostResponse: Mappable {
        // The authorization code returned for your application
        open var `code`: String?
        // The remaining lifetime of the authorization code
        open var `expires_in`: Int?
        // This parameter will be included in response if it was specified in the client authorization request. The value will be copied from the one received from the client
        open var `state`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `code` <- map["code"]
            `expires_in` <- map["expires_in"]
            `state` <- map["state"]
        }
    }
}
