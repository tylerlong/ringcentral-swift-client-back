import Foundation
import ObjectMapper
open class MessageStore: Model {
    public override var pathSegment: String {
        get{
            return "message-store"
        }
    }
    // Delete Message by ID
    func delete() {
    }
    // Get Message by ID
    func get() -> MessageInfo {
        return MessageInfo(JSONString: "")!
    }
    // Update Message by ID
    func put() -> MessageInfo {
        return MessageInfo(JSONString: "")!
    }
}
