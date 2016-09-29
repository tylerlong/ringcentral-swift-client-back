import Foundation
import ObjectMapper
open class Timezone: Model {
    public override var pathSegment: String {
        get{
            return "timezone"
        }
    }
    // Get Time Zone by ID
    open func get(callback: @escaping (_ t: TimezoneInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: TimezoneInfo?, error) in
            callback(t, error)
        }
    }
}
