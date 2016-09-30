import Foundation
import ObjectMapper
import Alamofire
open class AddressBook: Model {
    public override var pathSegment: String {
        get{
            return "address-book"
        }
    }
    open func `contact`(_ _id: String? = nil) -> Contact {
        return Contact(parent: self, _id: _id)
    }
    open func `group`(_ _id: String? = nil) -> Group {
        return Group(parent: self, _id: _id)
    }
}
