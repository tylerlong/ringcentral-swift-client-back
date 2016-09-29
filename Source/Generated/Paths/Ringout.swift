import Foundation
import ObjectMapper
open class Ringout: Model {
    public override var pathSegment: String {
        get{
            return "ringout"
        }
    }
    // Cancel RingOut Call
    open func delete() {
    }
    // Get RingOut Call Status
    open func get() -> RingOutInfo {
        return RingOutInfo(JSONString: "")!
    }
}
