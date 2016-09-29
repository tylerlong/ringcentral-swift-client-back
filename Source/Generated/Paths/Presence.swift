import Foundation
import ObjectMapper
open class Presence: Model {
    public override var pathSegment: String {
        get{
            return "presence"
        }
    }
    // Get Extension Presence
    open func get(callback: @escaping (_ t: PresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PresenceInfo?, error) in
            callback(t, error)
        }
    }
}
