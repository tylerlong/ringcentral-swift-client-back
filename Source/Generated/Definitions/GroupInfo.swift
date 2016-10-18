import Foundation
import ObjectMapper
import Alamofire
open class GroupInfo: Mappable {
    // Internal identifier of a group
    open var `id`: String?
    // Canonical URI of a group
    open var `uri`: String?
    // Amount of contacts in a group
    open var `contactsCount`: Int?
    // Name of a group
    open var `groupName`: String?
    // Notes for a group
    open var `notes`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, contactsCount: Int? = nil, groupName: String? = nil, notes: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.contactsCount = `contactsCount`
        self.groupName = `groupName`
        self.notes = `notes`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `contactsCount` <- map["contactsCount"]
        `groupName` <- map["groupName"]
        `notes` <- map["notes"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        result["contactsCount"] = self.contactsCount
        result["groupName"] = self.groupName
        result["notes"] = self.notes
        return result
    }
}
