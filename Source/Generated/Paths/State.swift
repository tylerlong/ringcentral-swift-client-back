import Foundation
import ObjectMapper
open class State: Model {
    public override var pathSegment: String {
        get{
            return "state"
        }
    }
    // Get State/Province by ID
    open func get() -> StateInfo {
        return StateInfo(JSONString: "")!
    }
}
