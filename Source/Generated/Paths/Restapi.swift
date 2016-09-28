import Foundation
import ObjectMapper
open class Restapi: Model {
    public override var pathSegment: String {
        get{
            return "restapi"
        }
    }
    // Get API Version Info
    func get() -> VersionInfo {
        return VersionInfo(JSONString: "")!
    }
}
