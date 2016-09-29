import Foundation
import ObjectMapper
open class Group: Model {
    public override var pathSegment: String {
        get{
            return "group"
        }
    }
    // Get Contact Group by ID
    open func get() -> GroupInfo {
        return GroupInfo(JSONString: "")!
    }
}
