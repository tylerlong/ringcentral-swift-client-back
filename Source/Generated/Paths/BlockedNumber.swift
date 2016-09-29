import Foundation
import ObjectMapper
open class BlockedNumber: Model {
    public override var pathSegment: String {
        get{
            return "blocked-number"
        }
    }
    // Delete Blocked Number by ID
    open func delete() {
    }
    // Get Blocked Number by ID
    open func get() -> BlockedNumberInfo {
        return BlockedNumberInfo(JSONString: "")!
    }
    // Update Blocked Number Label
    open func put() -> BlockedNumberInfo {
        return BlockedNumberInfo(JSONString: "")!
    }
}
