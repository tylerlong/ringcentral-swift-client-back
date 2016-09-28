import Foundation
import ObjectMapper
open class CallLog: Model {
    public override var pathSegment: String {
        get{
            return "call-log"
        }
    }
    // Get Extension Call Log Record by ID
    func get() -> CallLogInfo {
        return CallLogInfo(JSONString: "")!
    }
}
