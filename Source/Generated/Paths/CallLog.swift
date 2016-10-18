import Foundation
import ObjectMapper
import Alamofire
open class CallLog: Model {
    public override var pathSegment: String {
        get{
            return "call-log"
        }
    }
    // Get Account Call Log
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Account Call Log
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Account Call Log
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Extension number of a user. If specified, returns call log for a particular extension only. Cannot be specified together with the phoneNumber filter
        open var `extensionNumber`: String?
        // Phone number of a caller/call recipient. If specified, returns all calls (both incoming and outcoming) with the mentioned phone number. Cannot be specified together with the extensionNumber filter
        open var `phoneNumber`: String?
        // The direction for the result records. It is allowed to specify more than one direction. If not specified, both inbound and outbound records are returned. Multiple values are accepted
        open var `direction`: String?
        // Call type of a record. It is allowed to specify more than one type. If not specified, all call types are returned. Multiple values are accepted
        open var `type`: String?
        // The default value is 'Simple' for both account and extension call log
        open var `view`: String?
        // 'True' if only recorded calls have to be returned
        open var `withRecording`: Bool?
        // The start datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is dateTo minus 24 hours
        open var `dateFrom`: String?
        // The end datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        open var `dateTo`: String?
        // Indicates the page number to retrieve. Only positive number values are allowed. The default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default.
        open var `perPage`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `extensionNumber` <- map["extensionNumber"]
            `phoneNumber` <- map["phoneNumber"]
            `direction` <- map["direction"]
            `type` <- map["type"]
            `view` <- map["view"]
            `withRecording` <- map["withRecording"]
            `dateFrom` <- map["dateFrom"]
            `dateTo` <- map["dateTo"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["extensionNumber"] = self.extensionNumber
            result["phoneNumber"] = self.phoneNumber
            result["direction"] = self.direction
            result["type"] = self.type
            result["view"] = self.view
            result["withRecording"] = self.withRecording
            result["dateFrom"] = self.dateFrom
            result["dateTo"] = self.dateTo
            result["page"] = self.page
            result["perPage"] = self.perPage
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of call log records
        open var `records`: [CallLogRecord]?
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
    // Get Account Call Log Record by ID
    open func get(callback: @escaping (_ t: CallLogInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CallLogInfo?, error) in
            callback(t, error)
        }
    }
    // Delete Extension Call Log
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Delete Extension Call Log
    open func delete(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    // Delete Extension Call Log
    open func delete(parameters: DeleteParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        delete(parameters: parameters.toParameters(), callback: callback)
    }
    open class DeleteParameters: Mappable {
        // The end datetime for records deletion in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        open var `dateTo`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `dateTo` <- map["dateTo"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["dateTo"] = self.dateTo
            return result
        }
    }
}
