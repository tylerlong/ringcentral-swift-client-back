import Foundation
import ObjectMapper
open class Timezone: Model {
    public override var pathSegment: String {
        get{
            return "timezone"
        }
    }
    // Get Time Zone by ID
    open func get() -> TimezoneInfo {
        return TimezoneInfo(JSONString: "")!
    }
}
