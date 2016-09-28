import Foundation
import ObjectMapper
open class Extension: Model {
    public override var pathSegment: String {
        get{
            return "extension"
        }
    }
    // Get Extension Info by ID
    func get() -> ExtensionInfo {
        return ExtensionInfo(JSONString: "")!
    }
    // Update Extension by ID
    func put() -> ExtensionInfo {
        return ExtensionInfo(JSONString: "")!
    }
}
