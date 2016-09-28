import Foundation
import ObjectMapper
open class AddressBook: Model {
    public override var pathSegment: String {
        get{
            return "address-book"
        }
    }
}
