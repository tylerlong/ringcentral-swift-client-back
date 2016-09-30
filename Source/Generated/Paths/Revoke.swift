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
    open func post(parameters: Parameters? = nil, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
}
