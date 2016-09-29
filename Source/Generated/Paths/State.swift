import Foundation
import ObjectMapper
open class State: Model {
    public override var pathSegment: String {
        get{
            return "state"
        }
    }
    // Get State/Province by ID
    open func get(callback: @escaping (_ t: StateInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: StateInfo?, error) in
            callback(t, error)
        }
    }
}
