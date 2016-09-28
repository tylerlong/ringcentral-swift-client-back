import Foundation
import ObjectMapper
open class Department: Model {
    public override var pathSegment: String {
        get{
            return "department"
        }
    }
}
