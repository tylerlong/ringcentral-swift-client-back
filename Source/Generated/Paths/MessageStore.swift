import Foundation
import ObjectMapper
open class MessageStore: Model {
    public override var pathSegment: String {
        get{
            return "message-store"
        }
    }
    open func `content`(_ _id: String? = nil) -> Content {
        return Content(parent: self, _id: _id)
    }
    // Delete Message by ID
    open func delete() {
    }
    // Get Message by ID
    open func get() -> MessageInfo {
        return MessageInfo(JSONString: "")!
    }
    // Update Message by ID
    open func put() -> MessageInfo {
        return MessageInfo(JSONString: "")!
    }
}
