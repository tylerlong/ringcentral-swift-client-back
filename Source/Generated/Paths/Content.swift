import Foundation
import ObjectMapper
open class Content: Model {
    public override var pathSegment: String {
        get{
            return "content"
        }
    }
    // Get Call Recording Content
    open func get() -> NSData {
        return NSData()
    }
}
