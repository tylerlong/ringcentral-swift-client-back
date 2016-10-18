import Foundation
import ObjectMapper
import Alamofire
open class Revoke: Model {
    public override var pathSegment: String {
        get{
            return "revoke"
        }
    }
    // OAuth2 Revoke Token
    open func post(parameters: PostParameters? = nil, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters?.toParameters()) { string, error in
            callback(error)
        }
    }
    open class PostParameters: Mappable {
        // Active access or refresh token to be revoked
        open var `token`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `token` <- map["token"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["token"] = self.token
            return result
        }
    }
}
