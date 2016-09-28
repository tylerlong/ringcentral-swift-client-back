import Foundation
import ObjectMapper
open class ClientInfo: Model {
    public override var pathSegment: String {
        get{
            return "client-info"
        }
    }
}
