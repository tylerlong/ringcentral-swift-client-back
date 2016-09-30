import Foundation
import ObjectMapper
import Alamofire
open class Oauth: Model {
    public override var pathSegment: String {
        get{
            return "oauth"
        }
    }
    open func `authorize`() -> Authorize {
        return Authorize(parent: self)
    }
    open func `revoke`() -> Revoke {
        return Revoke(parent: self)
    }
    open func `token`() -> Token {
        return Token(parent: self)
    }
}
