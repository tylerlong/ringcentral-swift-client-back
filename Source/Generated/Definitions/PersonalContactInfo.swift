import Foundation
import ObjectMapper
open class PersonalContactInfo: Mappable {
    // Standard resource properties ID
    open var `id`: Int?
    // Canonical URI
    open var `url`: String?
    // This property has a special meaning only on Address Book Sync (e.g. a contact can be 'Deleted'). For simple contact list reading it has always the default value - 'Alive'
    open var `availability`: String?
    // First name of a personal contact
    open var `firstName`: String?
    // Last name of a personal contact
    open var `lastName`: String?
    // Middle name of a personal contact
    open var `middleName`: String?
    // Nick name of a personal contact
    open var `nickName`: String?
    // Company name of a personal contact
    open var `company`: String?
    // Job title of a personal contact
    open var `jobTitle`: String?
    // Home phone of a personal contact
    open var `homePhone`: String?
    // The 2-d home phone of a personal contact
    open var `homePhone2`: String?
    // Business phone of a personal contact
    open var `businessPhone`: String?
    // The 2-d business phone of a personal contact
    open var `businessPhone2`: String?
    // Mobile phone of a personal contact
    open var `mobilePhone`: String?
    // Business fax of a personal contact
    open var `businessFax`: String?
    // Company phone of a personal contact
    open var `companyPhone`: String?
    // Assistant phone of a personal contact
    open var `assistantPhone`: String?
    // Car phone of a personal contact
    open var `carPhone`: String?
    // Other phone of a personal contact
    open var `otherPhone`: String?
    // Other fax of a personal contact
    open var `otherFax`: String?
    // Callback phone of a personal contact
    open var `callbackPhone`: String?
    // Email of a personal contact
    open var `email`: String?
    // The 2-d email of a personal contact
    open var `email2`: String?
    // The 3-d email of a personal contact
    open var `email3`: String?
    // Home address of a personal contact
    open var `homeAddress`: ContactAddressInfo?
    // Business address of a personal contact
    open var `businessAddress`: ContactAddressInfo?
    // Other address of a personal contact
    open var `otherAddress`: ContactAddressInfo?
    // Date of birth of a personal contact in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `birthday`: String?
    // Web page of a personal contact
    open var `webPage`: String?
    // Notes of a personal contact
    open var `notes`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `url` <- map["url"]
        `availability` <- map["availability"]
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `middleName` <- map["middleName"]
        `nickName` <- map["nickName"]
        `company` <- map["company"]
        `jobTitle` <- map["jobTitle"]
        `homePhone` <- map["homePhone"]
        `homePhone2` <- map["homePhone2"]
        `businessPhone` <- map["businessPhone"]
        `businessPhone2` <- map["businessPhone2"]
        `mobilePhone` <- map["mobilePhone"]
        `businessFax` <- map["businessFax"]
        `companyPhone` <- map["companyPhone"]
        `assistantPhone` <- map["assistantPhone"]
        `carPhone` <- map["carPhone"]
        `otherPhone` <- map["otherPhone"]
        `otherFax` <- map["otherFax"]
        `callbackPhone` <- map["callbackPhone"]
        `email` <- map["email"]
        `email2` <- map["email2"]
        `email3` <- map["email3"]
        `homeAddress` <- map["homeAddress"]
        `businessAddress` <- map["businessAddress"]
        `otherAddress` <- map["otherAddress"]
        `birthday` <- map["birthday"]
        `webPage` <- map["webPage"]
        `notes` <- map["notes"]
    }
}
