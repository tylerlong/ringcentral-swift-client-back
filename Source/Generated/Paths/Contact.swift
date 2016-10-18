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
    open func post(parameters: PersonalContactInfo? = nil, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters?.toParameters()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    // Get Contact List
    open func list(parameters: ListParameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters?.toParameters()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListParameters: Mappable {
        // Phone number in E.164 (11-digits) format with or without plus '+'. Multiple values are supported
        open var `phoneNumber`: String?
        // If specified, only contacts whose First name or Last name start with the mentioned substring are returned. Case-insensitive
        open var `startsWith`: String?
        // Sorts results by the specified property. The default is 'First Name'
        open var `sortBy`: String?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `phoneNumber` <- map["phoneNumber"]
            `startsWith` <- map["startsWith"]
            `sortBy` <- map["sortBy"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["phoneNumber"] = self.phoneNumber
            result["startsWith"] = self.startsWith
            result["sortBy"] = self.sortBy
            result["page"] = self.page
            result["perPage"] = self.perPage
            return result
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
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["records"] = self.records
            result["navigation"] = self.navigation
            result["paging"] = self.paging
            return result
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
    open func put(parameters: PersonalContactInfo? = nil, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters?.toParameters()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
}
