import Foundation
import ObjectMapper
open class Oauth: Model {
    public override var pathSegment: String {
        get{
            return "oauth"
        }
    }
    func `authorize`() -> Authorize {
        return Authorize(parent: self)
    }
    func `revoke`() -> Revoke {
        return Revoke(parent: self)
    }
    func `token`() -> Token {
        return Token(parent: self)
    }
}
