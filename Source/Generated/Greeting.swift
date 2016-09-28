import Foundation
import ObjectMapper
open class Greeting: Model {
    public override var pathSegment: String {
        get{
            return "greeting"
        }
    }
    // Get Custom Greeting by ID
    func get() -> CustomGreetingInfo {
        return CustomGreetingInfo(JSONString: "")!
    }
}
