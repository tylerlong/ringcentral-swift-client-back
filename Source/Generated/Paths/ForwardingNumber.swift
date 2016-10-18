import Foundation
import ObjectMapper
import Alamofire
open class ForwardingNumber: Model {
    public override var pathSegment: String {
        get{
            return "forwarding-number"
        }
    }
    // Add New Forwarding Number
    open func post(callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Add New Forwarding Number
    open func post(parameters: Parameters, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Add New Forwarding Number
    open func post(parameters: PostParameters, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Forwarding/Call flip phone number
        open var `phoneNumber`: String?
        // Forwarding/Call flip number title
        open var `label`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `phoneNumber` <- map["phoneNumber"]
            `label` <- map["label"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["phoneNumber"] = self.phoneNumber
            result["label"] = self.label
            return result
        }
    }
    // Get Forwarding Numbers
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Forwarding Numbers
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Forwarding Numbers
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["page"] = self.page
            result["perPage"] = self.perPage
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of forwarding phone numbers
        open var `records`: [ForwardingNumberInfo]?
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
}
