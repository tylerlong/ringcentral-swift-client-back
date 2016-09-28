import Foundation
import ObjectMapper
open class AddressBook: Model {
    public override var pathSegment: String {
        get{
            return "address-book"
        }
    }
    func `contact`(_id: String? = nil) -> Contact {
        return Contact(parent: self, _id: _id)
    }
    func `group`(_id: String? = nil) -> Group {
        return Group(parent: self, _id: _id)
    }
}
