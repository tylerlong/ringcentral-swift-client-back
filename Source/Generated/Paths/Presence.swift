import Foundation
import ObjectMapper
open class Presence: Model {
    public override var pathSegment: String {
        get{
            return "presence"
        }
    }
    // Get Extension Presence
    open func get() -> PresenceInfo {
        return PresenceInfo(JSONString: "")!
    }
}
