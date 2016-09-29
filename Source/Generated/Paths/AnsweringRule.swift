import Foundation
import ObjectMapper
open class AnsweringRule: Model {
    public override var pathSegment: String {
        get{
            return "answering-rule"
        }
    }
    // Delete Answering Rule by ID
    open func delete() {
    }
    // Get Custom Answering Rule by ID
    open func get() -> AnsweringRuleInfo {
        return AnsweringRuleInfo(JSONString: "")!
    }
    // Update Answering Rule by ID
    open func put() -> AnsweringRuleInfo {
        return AnsweringRuleInfo(JSONString: "")!
    }
}
