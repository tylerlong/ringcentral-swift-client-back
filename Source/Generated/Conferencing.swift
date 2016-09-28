import Foundation
import ObjectMapper
open class Conferencing: Model {
    public override var pathSegment: String {
        get{
            return "conferencing"
        }
    }
    // Get Conferencing info
    func get() -> ConferencingInfo {
        return ConferencingInfo(JSONString: "")!
    }
    // Update Conferencing info
    func put() -> ConferencingInfo {
        return ConferencingInfo(JSONString: "")!
    }
}
