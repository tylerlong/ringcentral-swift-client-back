import Foundation
import ObjectMapper
import Alamofire
open class Contact: Model {
    public override var pathSegment: String {
        get{
            return "contact"
        }
    }
    // Create New Contact
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    // Get Contact List
    open func list(parameters: Parameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of personal contacts from the extension address book
        open var `records`: [PersonalContactInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    // Delete Contact by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Contact by ID
    open func get(callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    // Update Contact by ID
    open func put(parameters: Parameters? = nil, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
}
