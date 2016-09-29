import Foundation
import ObjectMapper
open class Sms: Model {
    public override var pathSegment: String {
        get{
            return "sms"
        }
    }
    // Create and Send SMS Message
    open func post() -> MessageInfo {
        return MessageInfo(JSONString: "")!
    }
}
