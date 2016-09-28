import Foundation
import ObjectMapper
open class MessageSync: Model {
    public override var pathSegment: String {
        get{
            return "message-sync"
        }
    }
    // Message Synchronization
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // List of message records with synchronization information
        open var `records`: [MessageInfo]?
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
