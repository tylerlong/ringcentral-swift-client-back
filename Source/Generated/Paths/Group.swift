import Foundation
import ObjectMapper
open class Group: Model {
    public override var pathSegment: String {
        get{
            return "group"
        }
    }
    // Get Contact Group by ID
    open func get(callback: @escaping (_ t: GroupInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GroupInfo?, error) in
            callback(t, error)
        }
    }
}
