import Foundation
import ObjectMapper
import Alamofire
open class MessageStore: Model {
    public override var pathSegment: String {
        get{
            return "message-store"
        }
    }
    open func `content`(_ _id: String? = nil) -> Content {
        return Content(parent: self, _id: _id)
    }
    // Get Message List
    open func list(parameters: ListParameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters?.toParameters()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListParameters: Mappable {
        // Specifies the availability status for the resulting messages. Default value is 'Alive'. Multiple values are accepted
        open var `availability`: String?
        // Specifies the conversation identifier for the resulting messages
        open var `conversationId`: Int?
        // The start datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is dateTo minus 24 hours
        open var `dateFrom`: String?
        // The end datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        open var `dateTo`: String?
        // The direction for the resulting messages. If not specified, both inbound and outbound messages are returned. Multiple values are accepted
        open var `direction`: String?
        // If 'True', then the latest messages per every conversation ID are returned
        open var `distinctConversations`: Bool?
        // The type of the resulting messages. If not specified, all messages without message type filtering are returned. Multiple values are accepted
        open var `messageType`: String?
        // The read status for the resulting messages. Multiple values are accepted
        open var `readStatus`: String?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        // The phone number. If specified, messages are returned for this particular phone number only
        open var `phoneNumber`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `availability` <- map["availability"]
            `conversationId` <- map["conversationId"]
            `dateFrom` <- map["dateFrom"]
            `dateTo` <- map["dateTo"]
            `direction` <- map["direction"]
            `distinctConversations` <- map["distinctConversations"]
            `messageType` <- map["messageType"]
            `readStatus` <- map["readStatus"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `phoneNumber` <- map["phoneNumber"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["availability"] = self.availability
            result["conversationId"] = self.conversationId
            result["dateFrom"] = self.dateFrom
            result["dateTo"] = self.dateTo
            result["direction"] = self.direction
            result["distinctConversations"] = self.distinctConversations
            result["messageType"] = self.messageType
            result["readStatus"] = self.readStatus
            result["page"] = self.page
            result["perPage"] = self.perPage
            result["phoneNumber"] = self.phoneNumber
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of records with message information
        open var `records`: [MessageInfo]?
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
    // Delete Message by ID
    open func delete(parameters: DeleteParameters? = nil, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters?.toParameters()) { string, error in
            callback(error)
        }
    }
    open class DeleteParameters: Mappable {
        // If the value is 'True', then the message is purged immediately with all the attachments. The default value is 'False'
        open var `purge`: Bool?
        // Internal identifier of a message thread
        open var `conversationId`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `purge` <- map["purge"]
            `conversationId` <- map["conversationId"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["purge"] = self.purge
            result["conversationId"] = self.conversationId
            return result
        }
    }
    // Get Message by ID
    open func get(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    // Update Message by ID
    open func put(parameters: PutParameters? = nil, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters?.toParameters()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    open class PutParameters: Mappable {
        // Read status of a message to be changed. Multiple values are accepted
        open var `readStatus`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `readStatus` <- map["readStatus"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["readStatus"] = self.readStatus
            return result
        }
    }
}
