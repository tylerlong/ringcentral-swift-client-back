import Foundation
import ObjectMapper
open class Extension: Model {
    public override var pathSegment: String {
        get{
            return "extension"
        }
    }
    func `activeCalls`() -> ActiveCalls {
        return ActiveCalls(parent: self)
    }
    func `addressBookSync`() -> AddressBookSync {
        return AddressBookSync(parent: self)
    }
    func `addressBook`() -> AddressBook {
        return AddressBook(parent: self)
    }
    func `answeringRule`(_id: String? = nil) -> AnsweringRule {
        return AnsweringRule(parent: self, _id: _id)
    }
    func `authzProfile`() -> AuthzProfile {
        return AuthzProfile(parent: self)
    }
    func `blockedNumber`(_id: String? = nil) -> BlockedNumber {
        return BlockedNumber(parent: self, _id: _id)
    }
    func `businessHours`() -> BusinessHours {
        return BusinessHours(parent: self)
    }
    func `callLog`(_id: String? = nil) -> CallLog {
        return CallLog(parent: self, _id: _id)
    }
    func `callLogSync`() -> CallLogSync {
        return CallLogSync(parent: self)
    }
    func `companyPager`() -> CompanyPager {
        return CompanyPager(parent: self)
    }
    func `conferencing`() -> Conferencing {
        return Conferencing(parent: self)
    }
    func `device`(_id: String? = nil) -> Device {
        return Device(parent: self, _id: _id)
    }
    func `fax`() -> Fax {
        return Fax(parent: self)
    }
    func `forwardingNumber`() -> ForwardingNumber {
        return ForwardingNumber(parent: self)
    }
    func `grant`() -> Grant {
        return Grant(parent: self)
    }
    func `greeting`(_id: String? = nil) -> Greeting {
        return Greeting(parent: self, _id: _id)
    }
    func `meeting`(_id: String? = nil) -> Meeting {
        return Meeting(parent: self, _id: _id)
    }
    func `messageStore`(_id: String? = nil) -> MessageStore {
        return MessageStore(parent: self, _id: _id)
    }
    func `messageSync`() -> MessageSync {
        return MessageSync(parent: self)
    }
    func `phoneNumber`(_id: String? = nil) -> PhoneNumber {
        return PhoneNumber(parent: self, _id: _id)
    }
    func `presence`() -> Presence {
        return Presence(parent: self)
    }
    func `profileImage`(_id: String? = nil) -> ProfileImage {
        return ProfileImage(parent: self, _id: _id)
    }
    func `ringout`(_id: String? = nil) -> Ringout {
        return Ringout(parent: self, _id: _id)
    }
    func `sms`() -> Sms {
        return Sms(parent: self)
    }
    // Get Extension Info by ID
    func get() -> ExtensionInfo {
        return ExtensionInfo(JSONString: "")!
    }
    // Update Extension by ID
    func put() -> ExtensionInfo {
        return ExtensionInfo(JSONString: "")!
    }
}
