import Foundation
import ObjectMapper
import Alamofire
open class DepartmentPath: Model {
    public override var pathSegment: String {
        get{
            return "department"
        }
    }
    open func `members`() -> MembersPath {
        return MembersPath(parent: self)
    }
}
