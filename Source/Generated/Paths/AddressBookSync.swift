import Foundation
import ObjectMapper
import Alamofire
open class AddressBookSync: Model {
    public override var pathSegment: String {
        get{
            return "address-book-sync"
        }
    }
    // Contacts Synchronization
    open func get(parameters: GetParameters? = nil, callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters?.toParameters()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetParameters: Mappable {
        // Type of synchronization. The default value is 'FSync'
        open var `syncType`: String?
        // Value of syncToken property of the last sync request response
        open var `syncToken`: String?
        // Number of records per page to be returned. The max number of records is 250, which is also the default. For FSync — if the number of records exceeds the parameter value (either specified or default), all of the pages can be retrieved in several requests. For ISync — if the number of records exceeds the page size, the number of incoming changes to this number is limited
        open var `perPage`: Int?
        // Internal identifier of a page. It can be obtained from the 'nextPageId' parameter passed in response body
        open var `pageId`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `syncType` <- map["syncType"]
            `syncToken` <- map["syncToken"]
            `perPage` <- map["perPage"]
            `pageId` <- map["pageId"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["syncType"] = self.syncType
            result["syncToken"] = self.syncToken
            result["perPage"] = self.perPage
            result["pageId"] = self.pageId
            return result
        }
    }
    open class GetResponse: Mappable {
        // List of contacts with synchronization information
        open var `records`: [PersonalContactInfo]?
        // Sync type, token and time
        open var `syncInfo`: SyncInfo?
        // Internal identifier of the next page, if any
        open var `nextPageId`: Int?
        // URL of the next page, if any
        open var `nextPageUri`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `syncInfo` <- map["syncInfo"]
            `nextPageId` <- map["nextPageId"]
            `nextPageUri` <- map["nextPageUri"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["records"] = self.records
            result["syncInfo"] = self.syncInfo
            result["nextPageId"] = self.nextPageId
            result["nextPageUri"] = self.nextPageUri
            return result
        }
    }
}
