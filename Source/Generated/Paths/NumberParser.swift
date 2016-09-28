import Foundation
import ObjectMapper
open class NumberParser: Model {
    public override var pathSegment: String {
        get{
            return "number-parser"
        }
    }
    func `parse`() -> Parse {
        return Parse(parent: self)
    }
}
