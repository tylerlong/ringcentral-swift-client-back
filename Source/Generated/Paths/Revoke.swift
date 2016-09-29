import Foundation
import ObjectMapper
open class Revoke: Model {
    public override var pathSegment: String {
        get{
            return "revoke"
        }
    }
    // OAuth2 Revoke Token
    open func post() {
    }
}
