import Foundation
import ObjectMapper
open class BlockedNumber: Model {
    public override var pathSegment: String {
        get{
            return "blocked-number"
        }
    }
    // Delete Blocked Number by ID
    func delete() {
    }
    // Get Blocked Number by ID
    func get() -> BlockedNumberInfo {
        return BlockedNumberInfo(JSONString: "")!
    }
    // Update Blocked Number Label
    func put() -> BlockedNumberInfo {
        return BlockedNumberInfo(JSONString: "")!
    }
}
