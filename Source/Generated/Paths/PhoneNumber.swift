import Foundation
import ObjectMapper
import Alamofire
open class PhoneNumber: Model {
    public override var pathSegment: String {
        get{
            return "phone-number"
        }
    }
    // Get Extension Phone Numbers
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Extension Phone Numbers
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Extension Phone Numbers
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Usage type of the phone number
        open var `usageType`: String?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `usageType` <- map["usageType"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["usageType"] = self.usageType
            result["page"] = self.page
            result["perPage"] = self.perPage
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of phone numbers
        open var `records`: [PhoneNumberInfo]?
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
    // Get Phone Number by ID
    open func get(callback: @escaping (_ t: PhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
}
