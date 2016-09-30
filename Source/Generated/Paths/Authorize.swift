import Foundation
import ObjectMapper
import Alamofire
open class Authorize: Model {
    public override var pathSegment: String {
        get{
            return "authorize"
        }
    }
    // OAuth2 Authorize
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
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
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["code"] = self.code
            result["expires_in"] = self.expires_in
            result["state"] = self.state
            return result
        }
    }
}
