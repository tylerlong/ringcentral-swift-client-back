import Foundation
import ObjectMapper
open class MessageStore: Model {
    public override var pathSegment: String {
        get{
            return "message-store"
        }
    }
    func `content`(_id: String? = nil) -> Content {
        return Content(parent: self, _id: _id)
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
