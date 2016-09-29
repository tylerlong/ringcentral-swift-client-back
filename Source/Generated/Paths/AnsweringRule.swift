import Foundation
import ObjectMapper
open class AnsweringRule: Model {
    public override var pathSegment: String {
        get{
            return "answering-rule"
        }
    }
    // Delete Answering Rule by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Custom Answering Rule by ID
    open func get(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    // Update Answering Rule by ID
    open func put(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
}
