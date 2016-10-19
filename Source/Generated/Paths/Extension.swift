import Foundation
import ObjectMapper
import Alamofire
open class Extension: Model {
    public override var pathSegment: String {
        get{
            return "extension"
        }
    }
    open func `activeCalls`() -> ActiveCalls {
        return ActiveCalls(parent: self)
    }
    open func `addressBookSync`() -> AddressBookSync {
        return AddressBookSync(parent: self)
    }
    open func `addressBook`() -> AddressBook {
        return AddressBook(parent: self)
    }
    open func `answeringRule`(_ _id: String? = nil) -> AnsweringRule {
        return AnsweringRule(parent: self, _id: _id)
    }
    open func `authzProfile`() -> AuthzProfile {
        return AuthzProfile(parent: self)
    }
    open func `blockedNumber`(_ _id: String? = nil) -> BlockedNumber {
        return BlockedNumber(parent: self, _id: _id)
    }
    open func `businessHours`() -> BusinessHours {
        return BusinessHours(parent: self)
    }
    open func `callLog`(_ _id: String? = nil) -> CallLog {
        return CallLog(parent: self, _id: _id)
    }
    open func `callLogSync`() -> CallLogSync {
        return CallLogSync(parent: self)
    }
    open func `companyPager`() -> CompanyPager {
        return CompanyPager(parent: self)
    }
    open func `conferencing`() -> Conferencing {
        return Conferencing(parent: self)
    }
    open func `device`(_ _id: String? = nil) -> Device {
        return Device(parent: self, _id: _id)
    }
    open func `fax`() -> Fax {
        return Fax(parent: self)
    }
    open func `forwardingNumber`() -> ForwardingNumber {
        return ForwardingNumber(parent: self)
    }
    open func `grant`() -> Grant {
        return Grant(parent: self)
    }
    open func `greeting`(_ _id: String? = nil) -> Greeting {
        return Greeting(parent: self, _id: _id)
    }
    open func `meeting`(_ _id: String? = nil) -> Meeting {
        return Meeting(parent: self, _id: _id)
    }
    open func `messageStore`(_ _id: String? = nil) -> MessageStore {
        return MessageStore(parent: self, _id: _id)
    }
    open func `messageSync`() -> MessageSync {
        return MessageSync(parent: self)
    }
    open func `phoneNumber`(_ _id: String? = nil) -> PhoneNumber {
        return PhoneNumber(parent: self, _id: _id)
    }
    open func `presence`() -> Presence {
        return Presence(parent: self)
    }
    open func `profileImage`(_ _id: String? = nil) -> ProfileImage {
        return ProfileImage(parent: self, _id: _id)
    }
    open func `ringout`(_ _id: String? = nil) -> Ringout {
        return Ringout(parent: self, _id: _id)
    }
    open func `sms`() -> Sms {
        return Sms(parent: self)
    }
    // Get Extension List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Extension List
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Extension List
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default.
        open var `perPage`: Int?
        // Extension current state. Multiple values are supported. If 'Unassigned' is specified, then extensions without extensionNumber are returned. If not specified, then all extensions are returned
        open var `status`: String?
        // Extension type. Multiple values are supported
        open var `type`: String?
        public init() {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, status: String? = nil, type: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.status = `status`
            self.type = `type`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `status` <- map["status"]
            `type` <- map["type"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of extensions with extension information
        open var `records`: [ExtensionInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        public init() {
        }
        convenience public init(records: [ExtensionInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Get Extension Info by ID
    open func get(callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ExtensionInfo?, error) in
            callback(t, error)
        }
    }
    // Update Extension by ID
    open func put(callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: ExtensionInfo?, error) in
            callback(t, error)
        }
    }
    // Update Extension by ID
    open func put(parameters: Parameters, callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: ExtensionInfo?, error) in
            callback(t, error)
        }
    }
    // Update Extension by ID
    open func put(parameters: ExtensionParameters, callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
