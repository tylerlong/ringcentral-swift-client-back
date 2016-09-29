import Foundation
import ObjectMapper
open class BlockedNumber: Model {
    public override var pathSegment: String {
        get{
            return "blocked-number"
        }
    }
    // Delete Blocked Number by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Blocked Number by ID
    open func get(callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Update Blocked Number Label
    open func put(callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
}
