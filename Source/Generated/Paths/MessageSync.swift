import Foundation
import ObjectMapper
import Alamofire
open class MessageSync: Model {
    public override var pathSegment: String {
        get{
            return "message-sync"
        }
    }
    // Message Synchronization
    open func get(parameters: Parameters? = nil, callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetResponse?, error) in
            callback(t, error)
        }
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
