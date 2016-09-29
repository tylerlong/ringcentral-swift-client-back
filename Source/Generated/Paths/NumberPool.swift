import Foundation
import ObjectMapper
open class NumberPool: Model {
    public override var pathSegment: String {
        get{
            return "number-pool"
        }
    }
    open func `lookup`() -> Lookup {
        return Lookup(parent: self)
    }
    open func `reserve`() -> Reserve {
        return Reserve(parent: self)
    }
}
