import Foundation
import ObjectMapper
open class Conferencing: Model {
    public override var pathSegment: String {
        get{
            return "conferencing"
        }
    }
    // Get Conferencing info
    open func get(callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Conferencing info
    open func put(callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
}
