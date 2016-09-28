import Foundation
import ObjectMapper
open class NumberPool: Model {
    public override var pathSegment: String {
        get{
            return "number-pool"
        }
    }
    func `lookup`() -> Lookup {
        return Lookup(parent: self)
    }
    func `reserve`() -> Reserve {
        return Reserve(parent: self)
    }
}
