import Foundation
import ObjectMapper
open class AddressBookSync: Model {
    public override var pathSegment: String {
        get{
            return "address-book-sync"
        }
    }
    // Contacts Synchronization
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
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
    }
}
