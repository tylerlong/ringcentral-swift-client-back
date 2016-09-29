import Foundation
import ObjectMapper
open class Greeting: Model {
    public override var pathSegment: String {
        get{
            return "greeting"
        }
    }
    // Get Custom Greeting by ID
    open func get(callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CustomGreetingInfo?, error) in
            callback(t, error)
        }
    }
}
