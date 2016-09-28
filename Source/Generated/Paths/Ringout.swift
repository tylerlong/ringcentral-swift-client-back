import Foundation
import ObjectMapper
open class Ringout: Model {
    public override var pathSegment: String {
        get{
            return "ringout"
        }
    }
    // Cancel RingOut Call
    func delete() {
    }
    // Get RingOut Call Status
    func get() -> RingOutInfo {
        return RingOutInfo(JSONString: "")!
    }
}
