import Foundation
import ObjectMapper
open class Oauth: Model {
    public override var pathSegment: String {
        get{
            return "oauth"
        }
    }
}
