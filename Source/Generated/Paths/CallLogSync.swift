import Foundation
import ObjectMapper
import Alamofire
open class CallLogSync: Model {
    public override var pathSegment: String {
        get{
            return "call-log-sync"
        }
    }
    // Call Log Synchronization
    open func get(parameters: GetParameters? = nil, callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters?.toParameters()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetParameters: Mappable {
        // Type of synchronization. 'FSync' is a default value
        open var `syncType`: String?
        // Value of syncToken property of last sync request response
        open var `syncToken`: String?
        // The start datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is the current moment
        open var `dateFrom`: String?
        // For FSync the parameter is mandatory, it limits the number of records to be returned in response. For ISync it specifies with how many records to extend sync Frame to the past, the maximum number of records is 250
        open var `recordCount`: Int?
        // Type of calls to be returned. The default value is 'All'
        open var `statusGroup`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `syncType` <- map["syncType"]
            `syncToken` <- map["syncToken"]
            `dateFrom` <- map["dateFrom"]
            `recordCount` <- map["recordCount"]
            `statusGroup` <- map["statusGroup"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["syncType"] = self.syncType
            result["syncToken"] = self.syncToken
            result["dateFrom"] = self.dateFrom
            result["recordCount"] = self.recordCount
            result["statusGroup"] = self.statusGroup
            return result
        }
    }
    open class GetResponse: Mappable {
        // List of call log records with synchronization information. For ISync the total number of returned records is limited to 250; this includes both new records and the old ones, specified by the recordCount parameter
        open var `records`: [CallLogRecord]?
        // Sync type, token and time
        open var `syncInfo`: SyncInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `syncInfo` <- map["syncInfo"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["records"] = self.records
            result["syncInfo"] = self.syncInfo
            return result
        }
    }
}
