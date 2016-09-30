import Foundation
import ObjectMapper
import Alamofire
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
