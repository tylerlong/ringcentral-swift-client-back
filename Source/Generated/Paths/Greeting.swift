import Foundation
import ObjectMapper
open class Greeting: Model {
    public override var pathSegment: String {
        get{
            return "greeting"
        }
    }
    // Get Custom Greeting by ID
    open func get() -> CustomGreetingInfo {
        return CustomGreetingInfo(JSONString: "")!
    }
}
