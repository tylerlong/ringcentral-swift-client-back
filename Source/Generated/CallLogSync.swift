import Foundation
import ObjectMapper
open class CallLogSync: Model {
    public override var pathSegment: String {
        get{
            return "call-log-sync"
        }
    }
    // Call Log Synchronization
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
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
    }
}
