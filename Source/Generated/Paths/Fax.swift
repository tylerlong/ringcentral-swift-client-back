import Foundation
import ObjectMapper
open class Fax: Model {
    public override var pathSegment: String {
        get{
            return "fax"
        }
    }
    // Create and Send Fax Message
    open func post() -> MessageInfo {
        return MessageInfo(JSONString: "")!
    }
}
