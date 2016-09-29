import Foundation
import ObjectMapper
open class Conferencing: Model {
    public override var pathSegment: String {
        get{
            return "conferencing"
        }
    }
    // Get Conferencing info
    open func get() -> ConferencingInfo {
        return ConferencingInfo(JSONString: "")!
    }
    // Update Conferencing info
    open func put() -> ConferencingInfo {
        return ConferencingInfo(JSONString: "")!
    }
}
