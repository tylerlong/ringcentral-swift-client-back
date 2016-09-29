import Foundation
import ObjectMapper
open class Department: Model {
    public override var pathSegment: String {
        get{
            return "department"
        }
    }
    open func `members`() -> Members {
        return Members(parent: self)
    }
}
