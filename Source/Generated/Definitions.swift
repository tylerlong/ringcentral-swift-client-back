import Foundation
import ObjectMapper

open class AccountInfo: Mappable {

    // Internal identifier of an account
    open var `id`: String?

    // Canonical URI of an account
    open var `uri`: String?

    // Main phone number of the current account
    open var `mainNumber`: String?

    // Operator's extension information. This extension will receive all calls and messages intended for the operator
    open var `operator`: ExtensionInfo?

    // Additional account identifier, developed and applied by the client
    open var `partnerId`: String?

    // Account service information, including brand, service plan and billing plan
    open var `serviceInfo`: ServiceInfo?

    // Specifies account configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?

    // Status of the current account
    open var `status`: String?

    // Status information (reason, comment, lifetime). Returned for 'Disabled' status only
    open var `statusInfo`: StatusInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `mainNumber` <- map["mainNumber"]
        `operator` <- map["operator"]
        `partnerId` <- map["partnerId"]
        `serviceInfo` <- map["serviceInfo"]
        `setupWizardState` <- map["setupWizardState"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]

    }

}

open class AccountLimits: Mappable {

    // The maximum number of free softphone digital lines per user extension
    open var `freeSoftPhoneLinesPerExtension`: Int?

    // The maximum number of participants in RingCentral Meeting hosted by this account's user
    open var `meetingSize`: Int?

    // The maximum number of extensions which can be included in the list of users monitored for Presence
    open var `maxMonitoredExtensionsPerUser`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `freeSoftPhoneLinesPerExtension` <- map["freeSoftPhoneLinesPerExtension"]
        `meetingSize` <- map["meetingSize"]
        `maxMonitoredExtensionsPerUser` <- map["maxMonitoredExtensionsPerUser"]

    }

}

open class AddonInfo: Mappable {

    // Addon identifier. For HardPhones of certain types, which are compatible with this addon identifier
    open var `id`: String?

    // Number of addons. For HardPhones of certain types, which are compatible with such addon identifier
    open var `count`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `count` <- map["count"]

    }

}

open class AnsweringRule_ScheduleInfo: Mappable {

    // Weekly schedule. If specified, ranges cannot be specified
    open var `weeklyRanges`: WeeklyScheduleInfo?

    // Specific data ranges. If specified, weeklyRanges cannot be specified
    open var `ranges`: RangesInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]

    }

}

open class AnsweringRuleInfo: Mappable {

    // Canonical URI to the answering rule resource
    open var `uri`: String?

    // Internal identifier of an asnwering rule
    open var `id`: String?

    // Type of an answering rule
    open var `type`: String?

    // Name of an answering rule specified by user
    open var `name`: String?

    // Specifies if an answering rule is active or inactive
    open var `enabled`: Bool?

    // Schedule when an answering rule should be applied
    open var `schedule`: ScheduleInfo?

    // Answering rules are applied when calling to selected number(s)
    open var `calledNumbers`: [AnsweringRuleInfo_CalleeInfo]?

    // Answering rules are applied when calls are received from specified caller(s)
    open var `callers`: [AnsweringRuleInfo_CallerInfo]?

    // Specifies how incoming calls are forwarded
    open var `callHandlingAction`: String?

    // Forwarding parameters. Returned if 'ForwardCalls' is specified in 'callHandlingAction'. These settings determine the forwarding numbers to which the call will be forwarded
    open var `forwarding`: ForwardingInfo?

    // Unconditional forwarding parameters. Returned if 'UnconditionalForwarding' is specified in 'callHandlingAction'
    open var `unconditionalForwarding`: UnconditionalForwardingInfo?

    // Specifies whether to take a voicemail and who should do it
    open var `voicemail`: VoicemailInfo?

    // Predefined greetings applied for an answering rule
    open var `greetings`: [GreetingInfo]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `type` <- map["type"]
        `name` <- map["name"]
        `enabled` <- map["enabled"]
        `schedule` <- map["schedule"]
        `calledNumbers` <- map["calledNumbers"]
        `callers` <- map["callers"]
        `callHandlingAction` <- map["callHandlingAction"]
        `forwarding` <- map["forwarding"]
        `unconditionalForwarding` <- map["unconditionalForwarding"]
        `voicemail` <- map["voicemail"]
        `greetings` <- map["greetings"]

    }

}

open class AnsweringRuleInfo_CalleeInfo: Mappable {

    // Called phone number
    open var `phoneNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]

    }

}

open class AnsweringRuleInfo_CallerInfo: Mappable {

    // Phone number of a caller
    open var `callerId`: String?

    // Contact name of a caller
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `callerId` <- map["callerId"]
        `name` <- map["name"]

    }

}

open class AttachmentInfo: Mappable {

    // Link to custom data attachment
    open var `uri`: String?

    // Type of custom data attachment, see also MIME Types
    open var `contentType`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `contentType` <- map["contentType"]

    }

}

open class BillingPlanInfo: Mappable {

    // Internal identifier of a billing plan
    open var `id`: String?

    // Billing plan name
    open var `name`: String?

    // Duration period
    open var `durationUnit`: String?

    // Number of duration units
    open var `duration`: String?

    // Billing plan type
    open var `type`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `durationUnit` <- map["durationUnit"]
        `duration` <- map["duration"]
        `type` <- map["type"]

    }

}

open class BlockedNumberInfo: Mappable {

    // Standard resource properties ID and canonical URI, see the section called “Resource Identification Properties”
    open var `id`: String?

    // Canonical URI of a blocked number resource
    open var `uri`: String?

    // Name assigned by a user to a blocked phone number
    open var `name`: String?

    // Phone number to be blocked
    open var `phoneNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `name` <- map["name"]
        `phoneNumber` <- map["phoneNumber"]

    }

}

open class BrandInfo: Mappable {

    // Internal identifier of a brand
    open var `id`: String?

    // Brand name, for example "RingCentral UK", "ClearFax"
    open var `name`: String?

    // Home country information
    open var `homeCountry`: CountryInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `homeCountry` <- map["homeCountry"]

    }

}

open class BusinessAddressInfo: Mappable {

    // Name of a country
    open var `country`: String?

    // Name of a state/province
    open var `state`: String?

    // Name of a city
    open var `city`: String?

    // Street address
    open var `street`: String?

    // Zip code
    open var `zip`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `country` <- map["country"]
        `state` <- map["state"]
        `city` <- map["city"]
        `street` <- map["street"]
        `zip` <- map["zip"]

    }

}

open class BusinessHour_ScheduleInfo: Mappable {

    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]

    }

}

open class CallLogInfo: Mappable {

    // Internal identifier of a cal log record
    open var `id`: String?

    // Canonical URI of a call log record
    open var `uri`: String?

    // Internal identifier of a call session
    open var `sessionId`: String?

    // Caller information
    open var `from`: CallerInfo?

    // Callee information
    open var `to`: CallerInfo?

    // Call type
    open var `type`: String?

    // Call direction
    open var `direction`: String?

    // Action description of the call operation
    open var `action`: String?

    // Status description of the call operation
    open var `result`: String?

    // The call start datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `startTime`: String?

    // Call duration in seconds
    open var `duration`: Int?

    // Call recording data. Returned if the call is recorded
    open var `recording`: RecordingInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `sessionId` <- map["sessionId"]
        `from` <- map["from"]
        `to` <- map["to"]
        `type` <- map["type"]
        `direction` <- map["direction"]
        `action` <- map["action"]
        `result` <- map["result"]
        `startTime` <- map["startTime"]
        `duration` <- map["duration"]
        `recording` <- map["recording"]

    }

}

open class CallLogRecord: Mappable {

    // Internal identifier of a cal log record
    open var `id`: String?

    // Canonical URI of a call log record
    open var `uri`: String?

    // Internal identifier of a call session
    open var `sessionId`: String?

    // Caller information
    open var `from`: CallerInfo?

    // Callee information
    open var `to`: CallerInfo?

    // Call type
    open var `type`: String?

    // Call direction
    open var `direction`: String?

    // Action description of the call operation
    open var `action`: String?

    // Status description of the call operation
    open var `result`: String?

    // The call start datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `startTime`: String?

    // Call duration in seconds
    open var `duration`: Int?

    // Call recording data. Returned if the call is recorded, the withRecording parameter is set to 'True' in this case
    open var `recording`: RecordingInfo?

    // For 'Detailed' view only. The datetime when the call log record was modified in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `lastModifiedTime`: String?

    // For 'Detailed' view only. Call transport
    open var `transport`: String?

    // For 'Detailed' view only. Leg description
    open var `legs`: [LegInfo]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `sessionId` <- map["sessionId"]
        `from` <- map["from"]
        `to` <- map["to"]
        `type` <- map["type"]
        `direction` <- map["direction"]
        `action` <- map["action"]
        `result` <- map["result"]
        `startTime` <- map["startTime"]
        `duration` <- map["duration"]
        `recording` <- map["recording"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `transport` <- map["transport"]
        `legs` <- map["legs"]

    }

}

open class CalledNumberInfo: Mappable {

    // Called phone number
    open var `phoneNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]

    }

}

open class CallerInfo: Mappable {

    // Phone number of a party. Usually it is a plain number including country and area code like 18661234567. But sometimes it could be returned from database with some formatting applied, for example (866)123-4567. This property is filled in all cases where parties communicate by means of global phone numbers, for example when calling to direct numbers or sending/receiving SMS
    open var `phoneNumber`: String?

    // Extension short number (usually 3 or 4 digits). This property is filled when parties communicate by means of short internal numbers, for example when calling to other extension or sending/receiving Company Pager message
    open var `extensionNumber`: String?

    // Contains party location (city, state) if one can be determined from phoneNumber. This property is filled only when phoneNumber is not empty and server can calculate location information from it (for example, this information is unavailable for US toll-free numbers)
    open var `location`: String?

    // Symbolic name associated with a party. If the phone does not belong to the known extension, only the location is returned, the name is not determined then
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `extensionNumber` <- map["extensionNumber"]
        `location` <- map["location"]
        `name` <- map["name"]

    }

}

open class CallersInfo: Mappable {

    // Phone number of a caller
    open var `callerId`: String?

    // Contact name of a caller
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `callerId` <- map["callerId"]
        `name` <- map["name"]

    }

}

open class Conferencing_Request_PhoneNumber: Mappable {

    // Dial-in phone number to connect to a conference
    open var `phoneNumber`: String?

    // 'True' if the number is default for the conference. Default conference number is a domestic number that can be set by user (otherwise it is set by the system). Only one default number per country is allowed
    open var `default`: Bool?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `default` <- map["default"]

    }

}

open class ConferencingInfo: Mappable {

    // Canonical URI of a conferencing
    open var `uri`: String?

    // Determines if host user allows conference participants to join before the host
    open var `allowJoinBeforeHost`: Bool?

    // Access code for a host user
    open var `hostCode`: String?

    // Internal parameter specifying conferencing engine
    open var `mode`: String?

    // Access code for any participant
    open var `participantCode`: String?

    // Primary conference phone number for user's home country returned in E.164 (11-digits) format
    open var `phoneNumber`: String?

    // Short URL leading to the service web page Tap to Join for audio conference bridge
    open var `tapToJoinUri`: String?

    // List of multiple dial-in phone numbers to connect to audio conference service, relevant for user's brand. Each number is given with the country and location information, in order to let the user choose the less expensive way to connect to a conference. The first number in the list is the primary conference number, that is default and domestic
    open var `phoneNumbers`: [ConferencingInfo_PhoneNumberInfo]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        `hostCode` <- map["hostCode"]
        `mode` <- map["mode"]
        `participantCode` <- map["participantCode"]
        `phoneNumber` <- map["phoneNumber"]
        `tapToJoinUri` <- map["tapToJoinUri"]
        `phoneNumbers` <- map["phoneNumbers"]

    }

}

open class ConferencingInfo_PhoneNumberInfo: Mappable {

    // Information on a home country of a conference phone number
    open var `country`: ConferencingInfo_PhoneNumberInfo_CountryInfo?

    // 'True' if the number is default for the conference. Default conference number is a domestic number that can be set by user (otherwise it is set by the system). Only one default number per country is allowed
    open var `default`: Bool?

    // 'True' if the greeting message is played on this number
    open var `hasGreeting`: Bool?

    // Location (city, region, state) of a conference phone number
    open var `location`: String?

    // Dial-in phone number to connect to a conference
    open var `phoneNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `country` <- map["country"]
        `default` <- map["default"]
        `hasGreeting` <- map["hasGreeting"]
        `location` <- map["location"]
        `phoneNumber` <- map["phoneNumber"]

    }

}

open class ConferencingInfo_PhoneNumberInfo_CountryInfo: Mappable {

    // Internal identifier of a country
    open var `id`: String?

    // Canonical URI of a country
    open var `uri`: String?

    // Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    open var `callingCode`: String?

    // Emergency calling feature availability/emergency address requirement indicator
    open var `emergencyCalling`: Bool?

    // Country code according to the ISO standard, see ISO 3166
    open var `isoCode`: String?

    // Official name of a country
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `emergencyCalling` <- map["emergencyCalling"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]

    }

}

open class ContactAddressInfo: Mappable {

    // Country name of extension user company. Not returned for Address Book
    open var `country`: String?

    // State/province name of extension user company
    open var `state`: String?

    // City name of extension user company
    open var `city`: String?

    // Street address of extension user company
    open var `street`: String?

    // Zip code of extension user company
    open var `zip`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `country` <- map["country"]
        `state` <- map["state"]
        `city` <- map["city"]
        `street` <- map["street"]
        `zip` <- map["zip"]

    }

}

open class ContactInfo: Mappable {

    // For User extension type only. Extension user first name
    open var `firstName`: String?

    // For User extension type only. Extension user last name
    open var `lastName`: String?

    // Extension user company name
    open var `company`: String?

    // Email of extension user
    open var `email`: String?

    // Extension user contact phone number
    open var `businessPhone`: String?

    // Business address of extension user company
    open var `businessAddress`: ContactAddressInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `company` <- map["company"]
        `email` <- map["email"]
        `businessPhone` <- map["businessPhone"]
        `businessAddress` <- map["businessAddress"]

    }

}

open class CountryInfo: Mappable {

    // Internal identifier of a home country
    open var `id`: String?

    // Canonical URI of a home country
    open var `uri`: String?

    // Official name of a home country
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `name` <- map["name"]

    }

}

open class CustomGreetingInfo: Mappable {

    // Link to an extension custom greeting
    open var `uri`: String?

    // Internal identifier of an answering rule
    open var `id`: String?

    // Type of a greeting, specifying the case when the greeting is played. See also Greeting Types
    open var `type`: String?

    // Content media type in WAV/MP3 format
    open var `contentType`: String?

    // Link to a greeting content (audio file)
    open var `contentUri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `type` <- map["type"]
        `contentType` <- map["contentType"]
        `contentUri` <- map["contentUri"]

    }

}

open class CustomGreetingInfo_AnsweringRuleInfo: Mappable {

    // Internal identifier of an answering rule
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]

    }

}

open class DeliveryMode: Mappable {

    // Notifications transportation provider name. 'APNS' (Apple Push Notifications Service)
    open var `transportType`: String?

    // Optional parameter. Specifies if the message will be encrypted or not. For APNS transport type the value is always "false"
    open var `encryption`: Bool?

    // PubNub channel name. For APNS transport type - internal identifier of a device "device_token"
    open var `address`: String?

    // PubNub subscriber credentials required to subscribe to the channel
    open var `subscriberKey`: String?

    // PubNub subscriber credentials required to subscribe to the channel. Optional (for PubNub transport type only)
    open var `secretKey`: String?

    // Encryption algorithm 'AES' (for PubNub transport type only)
    open var `encryptionAlgorithm`: String?

    // Key for notification message decryption (for PubNub transport type only)
    open var `encryptionKey`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `transportType` <- map["transportType"]
        `encryption` <- map["encryption"]
        `address` <- map["address"]
        `subscriberKey` <- map["subscriberKey"]
        `secretKey` <- map["secretKey"]
        `encryptionAlgorithm` <- map["encryptionAlgorithm"]
        `encryptionKey` <- map["encryptionKey"]

    }

}

open class Department_Response_ExtensionInfo: Mappable {

    // Internal identifier of an extension
    open var `id`: String?

    // Canonical URI of an extension
    open var `uri`: String?

    // Number of department extension
    open var `extensionNumber`: String?

    // For Partner Applications Internal identifier of an extension created by partner. The RingCentral supports the mapping of accounts and stores the corresponding account ID/extension ID for each partner ID of a client application. In request URIs partner IDs are accepted instead of regular RingCentral native IDs as path parameters using pid = XXX clause. Though in response URIs contain the corresponding account IDs and extension IDs. In all request and response bodies these values are reflected via partnerId attributes of account and extension
    open var `partnerId`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `partnerId` <- map["partnerId"]

    }

}

open class DepartmentInfo: Mappable {

    // Internal identifier of a department extension
    open var `id`: String?

    // Canonical URI of a department extension
    open var `uri`: String?

    // Number of a department extension
    open var `extensionNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]

    }

}

open class DeviceInfo: Mappable {

    // Internal identifier of a device
    open var `id`: String?

    // Canonical URI of a device
    open var `uri`: String?

    // Device identification number (stock keeping unit) in the format TP-ID [-AT-AC], where TP is device type (HP for RC HardPhone, DV for all other devices including softphone); ID - device model ID; AT -addon type ID; AC - addon count (if any). For example 'HP-56-2-2'
    open var `sku`: String?

    // Device type. The default value is 'HardPhone'
    open var `type`: String?

    // Device name. Mandatory if ordering "SoftPhone" or "OtherPhone". Optional for "HardPhone". If not specified for HardPhone, then device "model" name is used as device "name"
    open var `name`: String?

    // Serial number for HardPhone (is returned only when the phone is shipped and provisioned); endpoint_id for softphone and mobile applications
    open var `serial`: String?

    // PC name for softphone
    open var `computerName`: String?

    // HardPhone model information
    open var `model`: ModelInfo?

    // This attribute can be omitted for unassigned devices
    open var `extension`: DeviceInfo_ExtensionInfo?

    // Address for emergency cases. The same emergency address is assigned to all the numbers of one device
    open var `emergencyServiceAddress`: EmergencyAddressInfo?

    // Phone lines information
    open var `phoneLines`: PhoneLinesInfo?

    // Shipping information, according to which devices (in case of "HardPhone") or e911 stickers (in case of "SoftPhone" and "OtherPhone") will be delivered to the customer
    open var `shipping`: ShippingInfo?

    // Box billing identifier of a device. Applicable only for HardPhones. It is an alternative way to identify the device to be ordered. Either "model" structure, or "boxBillingId" must be specified for HardPhone
    open var `boxBillingId`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `sku` <- map["sku"]
        `type` <- map["type"]
        `name` <- map["name"]
        `serial` <- map["serial"]
        `computerName` <- map["computerName"]
        `model` <- map["model"]
        `extension` <- map["extension"]
        `emergencyServiceAddress` <- map["emergencyServiceAddress"]
        `phoneLines` <- map["phoneLines"]
        `shipping` <- map["shipping"]
        `boxBillingId` <- map["boxBillingId"]

    }

}

open class DeviceInfo_ExtensionInfo: Mappable {

    // Internal identifier of an extension
    open var `id`: String?

    // Canonical URI of an extension
    open var `uri`: String?

    // Number of department extension
    open var `extensionNumber`: String?

    // For Partner Applications Internal identifier of an extension created by partner. The RingCentral supports the mapping of accounts and stores the corresponding account ID/extension ID for each partner ID of a client application. In request URIs partner IDs are accepted instead of regular RingCentral native IDs as path parameters using pid = XXX clause. Though in response URIs contain the corresponding account IDs and extension IDs. In all request and response bodies these values are reflected via partnerId attributes of account and extension
    open var `partnerId`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `partnerId` <- map["partnerId"]

    }

}

open class DialInNumbers: Mappable {

    // Phone number of the dial-in number for the meeting in e.164 format
    open var `phoneNumber`: String?

    // Phone number of the dial-in number formatted according to the extension home country
    open var `formattedNumber`: String?

    // Optional field in case the dial-in number is associated with a particular location
    open var `location`: String?

    // Country resource corresponding to the dial-in number
    open var `country`: DialInNumbers_CountryInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `location` <- map["location"]
        `country` <- map["country"]

    }

}

open class DialInNumbers_CountryInfo: Mappable {

    // Internal identifier of a country
    open var `id`: String?

    // Canonical URI of a country
    open var `uri`: String?

    // Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    open var `callingCode`: String?

    // Country code according to the ISO standard, see ISO 3166
    open var `isoCode`: String?

    // Official name of a country
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]

    }

}

open class DialingPlanCountryInfo: Mappable {

    // Internal identifier of a country
    open var `id`: String?

    // Canonical URI of a country
    open var `uri`: String?

    // Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    open var `callingCode`: String?

    // Country code according to the ISO standard, see ISO 3166
    open var `isoCode`: String?

    // Official name of a country
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]

    }

}

open class EmergencyAddressInfo: Mappable {

    // Name of a customer
    open var `customerName`: String?

    // Street address, line 1 - street address, P.O. box, company name, c/o
    open var `street`: String?

    // Street address, line 2 - apartment, suite, unit, building, floor, etc.
    open var `street2`: String?

    // City name
    open var `city`: String?

    // State/province name
    open var `state`: String?

    // Zip code
    open var `zip`: String?

    // Country name
    open var `country`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `customerName` <- map["customerName"]
        `street` <- map["street"]
        `street2` <- map["street2"]
        `city` <- map["city"]
        `state` <- map["state"]
        `zip` <- map["zip"]
        `country` <- map["country"]

    }

}

open class ExtensionInfo: Mappable {

    // Internal identifier of an extension
    open var `id`: String?

    // Canonical URI of an extension
    open var `uri`: String?

    // Contact detailed information
    open var `contact`: ContactInfo?

    // Information on department extension(s), to which the requested extension belongs. Returned only for user extensions, members of department, requested by single extensionId
    open var `departments`: [DepartmentInfo]?

    // Number of department extension
    open var `extensionNumber`: String?

    // Extension user name
    open var `name`: String?

    // For Partner Applications Internal identifier of an extension created by partner. The RingCentral supports the mapping of accounts and stores the corresponding account ID/extension ID for each partner ID of a client application. In request URIs partner IDs are accepted instead of regular RingCentral native IDs as path parameters using pid = XXX clause. Though in response URIs contain the corresponding account IDs and extension IDs. In all request and response bodies these values are reflected via partnerId attributes of account and extension
    open var `partnerId`: String?

    // Extension permissions, corresponding to the Service Web permissions 'Admin' and 'InternationalCalling'
    open var `permissions`: ExtensionPermissions?

    // Information on profile image
    open var `profileImage`: ProfileImageInfo?

    // List of non-RC internal identifiers assigned to an extension
    open var `references`: [ReferenceInfo]?

    // Extension region data (timezone, home country, language)
    open var `regionalSettings`: RegionalSettings?

    // Extension service features returned in response only when the logged-in user requests his/her own extension info, see also Extension Service Features
    open var `serviceFeatures`: [ExtensionServiceFeatureInfo]?

    // Specifies extension configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?

    // Extension current state. If the status is 'Unassigned'. Returned for all extensions
    open var `status`: String?

    // Status information (reason, comment). Returned for 'Disabled' status only
    open var `statusInfo`: StatusInfo?

    // Extension type
    open var `type`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `contact` <- map["contact"]
        `departments` <- map["departments"]
        `extensionNumber` <- map["extensionNumber"]
        `name` <- map["name"]
        `partnerId` <- map["partnerId"]
        `permissions` <- map["permissions"]
        `profileImage` <- map["profileImage"]
        `references` <- map["references"]
        `regionalSettings` <- map["regionalSettings"]
        `serviceFeatures` <- map["serviceFeatures"]
        `setupWizardState` <- map["setupWizardState"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `type` <- map["type"]

    }

}

open class ExtensionInfo_Request_ContactInfo: Mappable {

    // Contact information
    open var `contact`: ContactInfo?

    // Region data (timezone, home country, language)
    open var `regionalSettings`: ExtensionInfo_Request_ContactInfo_RegionalSettings?

    // Specifies extension configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?

    // Extension user department
    open var `department`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `contact` <- map["contact"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `department` <- map["department"]

    }

}

open class ExtensionInfo_Request_ContactInfo_RegionalSettings: Mappable {

    // Timezone data
    open var `timezone`: ExtensionInfo_Request_ContactInfo_RegionalSettings_Timezone?

    // User interface language data
    open var `language`: ExtensionInfo_Request_ContactInfo_RegionalSettings_Language?

    // Information on language used for telephony greetings
    open var `greetingLanguage`: ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage?

    // Formatting language preferences for numbers, dates and currencies
    open var `formattingLocale`: ExtensionInfo_Request_ContactInfo_RegionalSettings_FormattingLocale?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `timezone` <- map["timezone"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]

    }

}

open class ExtensionInfo_Request_ContactInfo_RegionalSettings_FormattingLocale: Mappable {

    // Internal identifier of a formatting language
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]

    }

}

open class ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage: Mappable {

    // Internal identifier of a greeting language
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]

    }

}

open class ExtensionInfo_Request_ContactInfo_RegionalSettings_Language: Mappable {

    // Language identifier. The default value is "1033" (English US)
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]

    }

}

open class ExtensionInfo_Request_ContactInfo_RegionalSettings_Timezone: Mappable {

    // Timezone identifier. The default value is "58" (US&Canada)
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]

    }

}

open class ExtensionInfo_Request_PartnerId: Mappable {

    // Extension partner identifier
    open var `partnerId`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `partnerId` <- map["partnerId"]

    }

}

open class ExtensionInfo_Request_PasswordPIN: Mappable {

    // Password for extension
    open var `password`: String?

    // IVR PIN
    open var `ivrPin`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `password` <- map["password"]
        `ivrPin` <- map["ivrPin"]

    }

}

open class ExtensionInfo_Request_Provision: Mappable {

    // Mandatory. Resulting extension status
    open var `status`: String?

    // Mandatory. Extension user contact information
    open var `contact`: ExtensionInfo_Request_Provision_ContactInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `status` <- map["status"]
        `contact` <- map["contact"]

    }

}

open class ExtensionInfo_Request_Provision_ContactInfo: Mappable {

    // Mandatory. Extension user first name
    open var `firstName`: String?

    // Mandatory. Extension user last name
    open var `lastName`: String?

    // Mandatory. Extension user contact email
    open var `email`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `email` <- map["email"]

    }

}

open class ExtensionInfo_Request_StatusInfo: Mappable {

    // Required extension status
    open var `status`: String?

    // Extension status information, only for the 'Disabled' status
    open var `statusInfo`: StatusInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]

    }

}

open class ExtensionPermissions: Mappable {

    // Admin permission
    open var `admin`: PermissionInfo?

    // International Calling permission
    open var `internationalCalling`: PermissionInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `admin` <- map["admin"]
        `internationalCalling` <- map["internationalCalling"]

    }

}

open class ExtensionServiceFeatureInfo: Mappable {

    // Feature status; shows feature availability for an extension
    open var `enabled`: Bool?

    // Feature name, see all available values in Service Feature List
    open var `featureName`: String?

    // Reason of limitation for a particular service feature. Returned only if the enabled parameter value is 'False', see Service Feature Limitations and Reasons. When retrieving service features for an extension, the reasons for the limitations, if any, are returned in response
    open var `reason`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `featureName` <- map["featureName"]
        `reason` <- map["reason"]

    }

}

open class ExternalUserInfo: Mappable {

    // User type of a meeting account
    open var `accountId`: String?

    // Meeting account user identifier
    open var `userId`: String?

    // Meeting account user token
    open var `userToken`: String?

    // Meeting account user type
    open var `userType`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `userId` <- map["userId"]
        `userToken` <- map["userToken"]
        `userType` <- map["userType"]

    }

}

open class FormattingLocaleInfo: Mappable {

    // Internal identifier of a formatting language
    open var `id`: String?

    // Localization code of a formatting language
    open var `localeCode`: String?

    // Official name of a formatting language
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]

    }

}

open class ForwardingInfo: Mappable {

    // Specifies if the user's softphone(s) are notified before forwarding the incoming call to desk phones and forwarding numbers
    open var `notifyMySoftPhones`: Bool?

    // Specifies if the administrator's softphone is notified before forwarding the incoming call to desk phones and forwarding numbers. The default value is 'False'
    open var `notifyAdminSoftPhones`: Bool?

    // Number of rings before forwarding starts
    open var `softPhonesRingCount`: Int?

    // Specifies the order in which forwarding numbers ring. 'Sequentially' means that forwarding numbers are ringing one at a time, in order of priority. 'Simultaneously' means that forwarding numbers are ring all at the same time
    open var `ringingMode`: String?

    // Information on a call forwarding rule
    open var `rules`: [RuleInfo]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `notifyMySoftPhones` <- map["notifyMySoftPhones"]
        `notifyAdminSoftPhones` <- map["notifyAdminSoftPhones"]
        `softPhonesRingCount` <- map["softPhonesRingCount"]
        `ringingMode` <- map["ringingMode"]
        `rules` <- map["rules"]

    }

}

open class ForwardingNumberInfo: Mappable {

    // Internal identifier of a forwarding/call flip phone number
    open var `id`: String?

    // Canonical URI of a forwarding/call flip phone number
    open var `uri`: String?

    // Forwarding/Call flip phone number
    open var `phoneNumber`: String?

    // Forwarding/Call flip number title
    open var `label`: String?

    // Type of option this phone number is used for. Multiple values are accepted
    open var `features`: String?

    // Number assigned to the call flip phone number, corresponds to the shortcut dial number
    open var `flipNumber`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `features` <- map["features"]
        `flipNumber` <- map["flipNumber"]

    }

}

open class FullCountryInfo: Mappable {

    // Internal identifier of a country
    open var `id`: String?

    // Canonical URI of a country
    open var `uri`: String?

    // Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    open var `callingCode`: String?

    // Emergency calling feature availability/emergency address requirement indicator
    open var `emergencyCalling`: Bool?

    // Country code according to the ISO standard, see ISO 3166
    open var `isoCode`: String?

    // Official name of a country
    open var `name`: String?

    // Determines whether phone numbers are available for a country
    open var `numberSelling`: Bool?

    // Specifies whether login with the phone numbers of this country is enabled or not
    open var `loginAllowed`: Bool?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `emergencyCalling` <- map["emergencyCalling"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
        `numberSelling` <- map["numberSelling"]
        `loginAllowed` <- map["loginAllowed"]

    }

}

open class GrantInfo: Mappable {

    // Canonical URI of a grant
    open var `uri`: String?

    // Extension information
    open var `extension`: GrantInfo_ExtensionInfo?

    // Specifies if picking up of other extensions' calls is allowed for the extension. If 'Presence' feature is disabled for the given extension, the flag is not returned
    open var `callPickup`: Bool?

    // Specifies if monitoring of other extensions' calls is allowed for the extension. If 'CallMonitoring' feature is disabled for the given extension, the flag is not returned
    open var `callMonitoring`: Bool?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `extension` <- map["extension"]
        `callPickup` <- map["callPickup"]
        `callMonitoring` <- map["callMonitoring"]

    }

}

open class GrantInfo_ExtensionInfo: Mappable {

    // Internal identifier of an extension
    open var `id`: String?

    // Canonical URI of an extension
    open var `uri`: String?

    // Extension short number (usually 3 or 4 digits)
    open var `extensionNumber`: String?

    // Extension type
    open var `type`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `type` <- map["type"]

    }

}

open class GreetingInfo: Mappable {

    // Type of a greeting, specifying the case when the greeting is played. See also Greeting Types
    open var `type`: String?

    // Predefined greeting information
    open var `preset`: PresetInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `type` <- map["type"]
        `preset` <- map["preset"]

    }

}

open class GreetingLanguageInfo: Mappable {

    // Internal identifier of a greeting language
    open var `id`: String?

    // Localization code of a greeting language
    open var `localeCode`: String?

    // Official name of a greeting language
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]

    }

}

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

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `contactsCount` <- map["contactsCount"]
        `groupName` <- map["groupName"]
        `notes` <- map["notes"]

    }

}

open class ImageUri: Mappable {

    // Link to an image.
    open var `uri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]

    }

}

open class LanguageInfo: Mappable {

    // Internal identifier of a language
    open var `id`: String?

    // Canonical URI of a language
    open var `uri`: String?

    // Indicates whether a language is available as greeting language
    open var `greeting`: Bool?

    // Indicates whether a language is available as formatting locale
    open var `formattingLocale`: Bool?

    // Localization code of a language
    open var `localeCode`: String?

    // Official name of a language
    open var `name`: String?

    // Indicates whether a language is available as UI language
    open var `ui`: Bool?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `greeting` <- map["greeting"]
        `formattingLocale` <- map["formattingLocale"]
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
        `ui` <- map["ui"]

    }

}

open class LegInfo: Mappable {

    // Action description of the call operation
    open var `action`: String?

    // Call direction
    open var `direction`: String?

    // Call duration in seconds
    open var `duration`: Int?

    // Information on extension
    open var `extension`: LegInfo_ExtensionInfo?

    // Leg type
    open var `legType`: String?

    // The call start datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `startTime`: String?

    // Call type
    open var `type`: String?

    // Status description of the call operation
    open var `result`: String?

    // Caller information
    open var `from`: CallerInfo?

    // Callee information
    open var `to`: CallerInfo?

    // Call transport
    open var `transport`: String?

    // Call recording data. Returned if the call is recorded
    open var `recording`: RecordingInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `action` <- map["action"]
        `direction` <- map["direction"]
        `duration` <- map["duration"]
        `extension` <- map["extension"]
        `legType` <- map["legType"]
        `startTime` <- map["startTime"]
        `type` <- map["type"]
        `result` <- map["result"]
        `from` <- map["from"]
        `to` <- map["to"]
        `transport` <- map["transport"]
        `recording` <- map["recording"]

    }

}

open class LegInfo_ExtensionInfo: Mappable {

    // Internal identifier of an extension
    open var `id`: Int?

    // Canonical URI of an extension
    open var `uri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]

    }

}

open class LinksInfo: Mappable {

    // Link to start a meeting
    open var `startUri`: String?

    // Link to join a meeting
    open var `joinUri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `startUri` <- map["startUri"]
        `joinUri` <- map["joinUri"]

    }

}

open class LocationInfo: Mappable {

    // Canonical URI of a location
    open var `uri`: String?

    // Area code of the location
    open var `areaCode`: String?

    // Official name of the city, belonging to the certain state
    open var `city`: String?

    // Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See for details North American Numbering Plan
    open var `npa`: String?

    // Central office code of the location, according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See for details North American Numbering Plan
    open var `nxx`: String?

    // ID and URI of the state this location belongs to, see State Info
    open var `state`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `areaCode` <- map["areaCode"]
        `city` <- map["city"]
        `npa` <- map["npa"]
        `nxx` <- map["nxx"]
        `state` <- map["state"]

    }

}

open class LookUpPhoneNumber_PhoneNumberInfo: Mappable {

    // Phone number in E.164 format without a '+'
    open var `phoneNumber`: String?

    // Phone number formatted according to current brand's default country
    open var `formattedNumber`: String?

    // Vanity pattern for this number. Returned only when vanity search option is requested. Vanity pattern corresponds to request parameters nxx plus line or numberPattern
    open var `vanityPattern`: String?

    // The value is returned if the extendedSearch parameter is true. '10' is the closest match
    open var `rank`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `vanityPattern` <- map["vanityPattern"]
        `rank` <- map["rank"]

    }

}

open class MeetingInfo: Mappable {

    // Canonical URI of a meeting resource
    open var `uri`: String?

    // Internal identifier of a meeting as retrieved from Zoom
    open var `id`: String?

    // Topic of a meeting
    open var `topic`: String?

    // Type of a meeting
    open var `meetingType`: String?

    // Password required to join a meeting
    open var `password`: String?

    // Current status of a meeting
    open var `status`: String?

    // Links to start/join the meeting
    open var `links`: LinksInfo?

    // Schedule of a meeting
    open var `schedule`: MeetingScheduleInfo?

    // If 'True' then the meeting can be joined and started by any participant (not host only). Supported for the meetings of 'Scheduled' and 'Recurring' type.
    open var `allowJoinBeforeHost`: Bool?

    // Enables starting video when host joins the meeting
    open var `startHostVideo`: Bool?

    // Enables starting video when participants join the meeting
    open var `startParticipantsVideo`: Bool?

    // Meeting audio options. Possible values are 'Phone', 'ComputerAudio'
    open var `audioOptions`: [String]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `topic` <- map["topic"]
        `meetingType` <- map["meetingType"]
        `password` <- map["password"]
        `status` <- map["status"]
        `links` <- map["links"]
        `schedule` <- map["schedule"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        `startHostVideo` <- map["startHostVideo"]
        `startParticipantsVideo` <- map["startParticipantsVideo"]
        `audioOptions` <- map["audioOptions"]

    }

}

open class MeetingScheduleInfo: Mappable {

    // Start time of a meeting in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `startTime`: String?

    // Duration of a meeting in minutes
    open var `durationInMinutes`: Int?

    // Timezone of a meeting
    open var `timeZone`: MeetingScheduleInfo_TimezoneInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `startTime` <- map["startTime"]
        `durationInMinutes` <- map["durationInMinutes"]
        `timeZone` <- map["timeZone"]

    }

}

open class MeetingScheduleInfo_TimezoneInfo: Mappable {

    // Identifier of a timezone
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]

    }

}

open class MessageAttachmentInfo: Mappable {

    // Internal identifier of a message attachment
    open var `id`: String?

    // Canonical URI of a message attachment
    open var `uri`: String?

    // Type of message attachment
    open var `type`: String?

    // MIME type for a given attachment, for instance 'audio/wav'
    open var `contentType`: String?

    // Voicemail only Duration of the voicemail in seconds
    open var `vmDuration`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentType` <- map["contentType"]
        `vmDuration` <- map["vmDuration"]

    }

}

open class MessageInfo: Mappable {

    // Internal identifier of a message
    open var `id`: String?

    // Canonical URI of a message
    open var `uri`: String?

    // The list of message attachments
    open var `attachments`: [MessageAttachmentInfo]?

    // Message availability status. Message in 'Deleted' state is still preserved with all its attachments and can be restored. 'Purged' means that all attachments are already deleted and the message itself is about to be physically deleted shortly
    open var `availability`: String?

    // SMS and Pager only. Identifier of the conversation the message belongs to
    open var `conversationId`: Int?

    // Message creation datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `creationTime`: String?

    // SMS only. Delivery error code returned by gateway
    open var `deliveryErrorCode`: String?

    // Message direction. Note that for some message types not all directions are allowed. For example voicemail messages can be only inbound
    open var `direction`: String?

    // Fax only. Page count in fax message
    open var `faxPageCount`: Int?

    // Fax only. Resolution of fax message. ('High' for black and white image scanned at 200 dpi, 'Low' for black and white image scanned at 100 dpi)
    open var `faxResolution`: String?

    // Sender information
    open var `from`: MessageInfo_CallerInfo?

    // The datetime when the message was modified on server in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `lastModifiedTime`: String?

    // Message status. Different message types may have different allowed status values.
    open var `messageStatus`: String?

    // Pager only True if at least one of the message recipients is Department extension
    open var `pgToDepartment`: Bool?

    // Message priority
    open var `priority`: String?

    // Message read status
    open var `readStatus`: String?

    // SMS only. The datetime when outbound SMS was delivered to recipient's handset in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. It is filled only if the carrier sends a delivery receipt to RingCentral
    open var `smsDeliveryTime`: String?

    // SMS only. Number of attempts made to send an outbound SMS to the gateway (if gateway is temporary unavailable)
    open var `smsSendingAttemptsCount`: Int?

    // Message subject. For SMS and Pager messages it replicates message text which is also returned as an attachment
    open var `subject`: String?

    // Recipient information
    open var `to`: [MessageInfo_CallerInfo]?

    // Message type
    open var `type`: String?

    // Voicemail only. Status of voicemail to text transcription. If VoicemailToText feature is not activated for account, the 'NotAvailable' value is returned
    open var `vmTranscriptionStatus`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `attachments` <- map["attachments"]
        `availability` <- map["availability"]
        `conversationId` <- map["conversationId"]
        `creationTime` <- map["creationTime"]
        `deliveryErrorCode` <- map["deliveryErrorCode"]
        `direction` <- map["direction"]
        `faxPageCount` <- map["faxPageCount"]
        `faxResolution` <- map["faxResolution"]
        `from` <- map["from"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `messageStatus` <- map["messageStatus"]
        `pgToDepartment` <- map["pgToDepartment"]
        `priority` <- map["priority"]
        `readStatus` <- map["readStatus"]
        `smsDeliveryTime` <- map["smsDeliveryTime"]
        `smsSendingAttemptsCount` <- map["smsSendingAttemptsCount"]
        `subject` <- map["subject"]
        `to` <- map["to"]
        `type` <- map["type"]
        `vmTranscriptionStatus` <- map["vmTranscriptionStatus"]

    }

}

open class MessageInfo_CallerInfo: Mappable {

    // Extension short number (usually 3 or 4 digits). This property is filled when parties communicate by means of short internal numbers, for example when calling to other extension or sending/receiving Company Pager message
    open var `extensionNumber`: String?

    // Contains party location (city, state) if one can be determined from phoneNumber. This property is filled only when phoneNumber is not empty and server can calculate location information from it (for example, this information is unavailable for US toll-free numbers)
    open var `location`: String?

    // Status of a message. Returned for outbound fax messages only
    open var `messageStatus`: String?

    // Fax only. Error code returned in case of fax sending failure. Returned if messageStatus value is 'SendingFailed'
    open var `faxErrorCode`: String?

    // Symbolic name associated with a party. If the phone does not belong to the known extension, only the location is returned, the name is not determined then
    open var `name`: String?

    // Phone number of a party. Usually it is a plain number including country and area code like 18661234567. But sometimes it could be returned from database with some formatting applied, for example (866)123-4567. This property is filled in all cases where parties communicate by means of global phone numbers, for example when calling to direct numbers or sending/receiving SMS
    open var `phoneNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `extensionNumber` <- map["extensionNumber"]
        `location` <- map["location"]
        `messageStatus` <- map["messageStatus"]
        `faxErrorCode` <- map["faxErrorCode"]
        `name` <- map["name"]
        `phoneNumber` <- map["phoneNumber"]

    }

}

open class ModelInfo: Mappable {

    // Device model identifier. Mandatory when ordering a HardPhone if boxBillingId is not used for ordering
    open var `id`: String?

    // Device name
    open var `name`: String?

    // Addons description
    open var `addons`: [AddonInfo]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `addons` <- map["addons"]

    }

}

open class NavigationInfo: Mappable {

    // First page of the list
    open var `firstPage`: Page?

    // Next page of the list
    open var `nextPage`: Page?

    // Previous page of the list
    open var `previousPage`: Page?

    // Last page of the list
    open var `lastPage`: Page?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `firstPage` <- map["firstPage"]
        `nextPage` <- map["nextPage"]
        `previousPage` <- map["previousPage"]
        `lastPage` <- map["lastPage"]

    }

}

open class Page: Mappable {

    // Canonical URI for the page
    open var `uri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]

    }

}

open class PagingInfo: Mappable {

    // The current page number. 1-indexed, so the first page is 1 by default. May be omitted if result is empty (because non-existent page was specified or perPage=0 was requested)
    open var `page`: Int?

    // Current page size, describes how many items are in each page. Default value is 100. Maximum value is 1000. If perPage value in the request is greater than 1000, the maximum value (1000) is applied
    open var `perPage`: Int?

    // The zero-based number of the first element on the current page. Omitted if the page is omitted or result is empty
    open var `pageStart`: Int?

    // The zero-based index of the last element on the current page. Omitted if the page is omitted or result is empty
    open var `pageEnd`: Int?

    // The total number of pages in a dataset. May be omitted for some resources due to performance reasons
    open var `totalPages`: Int?

    // The total number of elements in a dataset. May be omitted for some resource due to performance reasons
    open var `totalElements`: Int?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `page` <- map["page"]
        `perPage` <- map["perPage"]
        `pageStart` <- map["pageStart"]
        `pageEnd` <- map["pageEnd"]
        `totalPages` <- map["totalPages"]
        `totalElements` <- map["totalElements"]

    }

}

open class ParsePhoneNumber_CountryInfo: Mappable {

    // Internal identifier of a country
    open var `id`: String?

    // Canonical URI of a country
    open var `uri`: String?

    // Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    open var `callingCode`: String?

    // Emergency calling feature availability/emergency address requirement indicator
    open var `emergencyCalling`: Bool?

    // Country code according to the ISO standard, see ISO 3166
    open var `isoCode`: String?

    // Official name of a country
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `emergencyCalling` <- map["emergencyCalling"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]

    }

}

open class ParsePhoneNumber_PhoneNumberInfo: Mappable {

    // Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See North American Numbering Plan for details
    open var `areaCode`: String?

    // Information on a country the phone number belongs to
    open var `country`: [ParsePhoneNumber_CountryInfo]?

    // Dialing format of a phone number
    open var `dialable`: String?

    // E.164 (11-digits) format of a phone number
    open var `e164`: String?

    // International format of a phone number
    open var `formattedInternational`: String?

    // Domestic format of a phone number
    open var `formattedNational`: String?

    // One of the numbers to be parsed, passed as a string in response
    open var `originalString`: String?

    // "True" if the number is in a special format (for example N11 code)
    open var `special`: Bool?

    // E.164 (11-digits) format of a phone number without the plus sign ('+')
    open var `normalized`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `areaCode` <- map["areaCode"]
        `country` <- map["country"]
        `dialable` <- map["dialable"]
        `e164` <- map["e164"]
        `formattedInternational` <- map["formattedInternational"]
        `formattedNational` <- map["formattedNational"]
        `originalString` <- map["originalString"]
        `special` <- map["special"]
        `normalized` <- map["normalized"]

    }

}

open class PermissionDetailsInfo: Mappable {

    // Information on a permission checked
    open var `permission`: UserPermissionInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `permission` <- map["permission"]

    }

}

open class PermissionInfo: Mappable {

    // Specifies if a permission is enabled or not
    open var `enabled`: Bool?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `enabled` <- map["enabled"]

    }

}

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

open class PhoneLinesInfo: Mappable {

    // Type of phone line
    open var `lineType`: String?

    // Phone number information
    open var `phoneInfo`: PhoneLinesInfo_PhoneNumberInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `lineType` <- map["lineType"]
        `phoneInfo` <- map["phoneInfo"]

    }

}

open class PhoneLinesInfo_PhoneNumberInfo: Mappable {

    // Internal identifier of a phone number
    open var `id`: Int?

    // Brief information on a phone number country
    open var `country`: CountryInfo?

    // Location (City, State). Filled for local US numbers
    open var `location`: String?

    // Payment type. 'External' is returned for forwarded numbers which are not terminated in the RingCentral phone system
    open var `paymentType`: String?

    // Phone number
    open var `phoneNumber`: String?

    // Status of a phone number. If the value is 'Normal', the phone number is ready to be used. Otherwise it is an external number not yet ported to RingCentral
    open var `status`: String?

    // Phone number type
    open var `type`: String?

    // Usage type of the phone number
    open var `usageType`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `country` <- map["country"]
        `location` <- map["location"]
        `paymentType` <- map["paymentType"]
        `phoneNumber` <- map["phoneNumber"]
        `status` <- map["status"]
        `type` <- map["type"]
        `usageType` <- map["usageType"]

    }

}

open class PhoneNumberInfo: Mappable {

    // Internal identifier of a phone number
    open var `id`: Int?

    // Brief information on a phone number country
    open var `country`: CountryInfo?

    // Information on the extension, to which the phone number is assigned. Returned only for the request of Account phone number list
    open var `extension`: PhoneNumberInfo_ExtensionInfo?

    // Indicates if this phone number is enabled to appear as CallerId and/or to send outbound SMS from it. Returned only for the request of Extension phone number list
    open var `features`: [String]?

    // Location (City, State). Filled for local US numbers
    open var `location`: String?

    // Payment type. 'External' is returned for forwarded numbers which are not terminated in the RingCentral phone system
    open var `paymentType`: String?

    // Phone number
    open var `phoneNumber`: String?

    // Status of a phone number. If the value is 'Normal', the phone number is ready to be used. Otherwise it is an external number not yet ported to RingCentral
    open var `status`: String?

    // Phone number type
    open var `type`: String?

    // Usage type of the phone number
    open var `usageType`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `country` <- map["country"]
        `extension` <- map["extension"]
        `features` <- map["features"]
        `location` <- map["location"]
        `paymentType` <- map["paymentType"]
        `phoneNumber` <- map["phoneNumber"]
        `status` <- map["status"]
        `type` <- map["type"]
        `usageType` <- map["usageType"]

    }

}

open class PhoneNumberInfo_ExtensionInfo: Mappable {

    // Internal identifier of an extension
    open var `id`: String?

    // Canonical URI of an extension
    open var `uri`: String?

    // Number of department extension
    open var `extensionNumber`: String?

    // For Partner Applications Internal identifier of an extension created by partner. The RingCentral supports the mapping of accounts and stores the corresponding account ID/extension ID for each partner ID of a client application. In request URIs partner IDs are accepted instead of regular RingCentral native IDs as path parameters using pid = XXX clause. Though in response URIs contain the corresponding account IDs and extension IDs. In all request and response bodies these values are reflected via partnerId attributes of account and extension
    open var `partnerId`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `partnerId` <- map["partnerId"]

    }

}

open class PresenceInfo: Mappable {

    // Canonical URI of a presence info resource
    open var `uri`: String?

    // If 'True' enables other extensions to see the extension presence status
    open var `allowSeeMyPresence`: Bool?

    // Extended DnD (Do not Disturb) status. Cannot be set for Department/Announcement/Voicemail (Take Messages Only)/Fax User/Shared Lines Group/Paging Only Group/IVR Menu/Application Extension/Park Location extensions. The 'DoNotAcceptDepartmentCalls' and 'TakeDepartmentCallsOnly' values are applicable only for extensions - members of a Department; if these values are set for department outsiders, the 400 Bad Request error code is returned. The 'TakeDepartmentCallsOnly' status can be set through the old RingCentral user interface and is available for some migrated accounts only.
    open var `dndStatus`: String?

    // Information on extension, for which this presence data is returned
    open var `extension`: PresenceInfo_ExtensionInfo?

    // Custom status message (as previously published by user)
    open var `message`: String?

    // If 'True' enables the extension user to pick up a monitored line on hold
    open var `pickUpCallsOnHold`: Bool?

    // Aggregated presence status, calculated from a number of sources
    open var `presenceStatus`: String?

    // If 'True' enables to ring extension phone, if any user monitored by this extension is ringing
    open var `ringOnMonitoredCall`: Bool?

    // Telephony presence status
    open var `telephonyStatus`: String?

    // User-defined presence status (as previously published by the user)
    open var `userStatus`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `allowSeeMyPresence` <- map["allowSeeMyPresence"]
        `dndStatus` <- map["dndStatus"]
        `extension` <- map["extension"]
        `message` <- map["message"]
        `pickUpCallsOnHold` <- map["pickUpCallsOnHold"]
        `presenceStatus` <- map["presenceStatus"]
        `ringOnMonitoredCall` <- map["ringOnMonitoredCall"]
        `telephonyStatus` <- map["telephonyStatus"]
        `userStatus` <- map["userStatus"]

    }

}

open class PresenceInfo_ExtensionInfo: Mappable {

    // Internal identifier of an extension
    open var `id`: String?

    // Canonical URI of an extension
    open var `uri`: String?

    // Extension number (usually 3 or 4 digits)
    open var `extensionNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]

    }

}

open class PresetInfo: Mappable {

    // Link to a greeting resource
    open var `uri`: String?

    // Internal identifier of greeting
    open var `id`: String?

    // Name of a greeting
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `name` <- map["name"]

    }

}

open class ProfileImageInfo: Mappable {

    // Link to a profile image. If an image is not uploaded for an extension, only uri is returned
    open var `uri`: String?

    // Identifier of an image
    open var `etag`: String?

    // The datetime when an image was last updated in ISO 8601 format, for example 2016-03-10T18:07:52.534Z
    open var `lastModified`: String?

    // The type of an image
    open var `contentType`: String?

    // List of URIs to profile images in different dimensions
    open var `scales`: [ImageUri]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `etag` <- map["etag"]
        `lastModified` <- map["lastModified"]
        `contentType` <- map["contentType"]
        `scales` <- map["scales"]

    }

}

open class RangesInfo: Mappable {

    // Date and time in format YYYY-MM-DD hh:mm
    open var `from`: String?

    // Date and time in format YYYY-MM-DD hh:mm
    open var `to`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]

    }

}

open class RecipientInfo: Mappable {

    // Link to a recipient extension resource
    open var `uri`: String?

    // Internal identifier of a recipient extension
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]

    }

}

open class RecordingInfo: Mappable {

    // Internal identifier of the call recording
    open var `id`: Int?

    // Link to the call recording metadata resource
    open var `uri`: String?

    // Indicates recording mode used
    open var `type`: String?

    // Link to the call recording binary content
    open var `contentUri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentUri` <- map["contentUri"]

    }

}

open class ReferenceInfo: Mappable {

    // Non-RC identifier of an extension
    open var `ref`: String?

    // Type of external identifier
    open var `type`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `ref` <- map["ref"]
        `type` <- map["type"]

    }

}

open class RegionalSettings: Mappable {

    // Extension country information
    open var `homeCountry`: CountryInfo?

    // Extension timezone information
    open var `timezone`: TimezoneInfo?

    // User interface language data
    open var `language`: LanguageInfo?

    // Information on language used for telephony greetings
    open var `greetingLanguage`: GreetingLanguageInfo?

    // Formatting language preferences for numbers, dates and currencies
    open var `formattingLocale`: FormattingLocaleInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `homeCountry` <- map["homeCountry"]
        `timezone` <- map["timezone"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]

    }

}

open class ReservePhoneNumber_Request_ReserveRecord: Mappable {

    // Phone number in E.164 format without a '+'
    open var `phoneNumber`: String?

    // The datetime up to which the number is reserved in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. If it is omitted or explicitly set to 'null', the number will be un-reserved if it was reserved previously by the same session. 'Min' value is 30 seconds; 'Max' value is 30 days (for reservation by brand) and 20 minutes (for reservation by account/session)
    open var `reservedTill`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `reservedTill` <- map["reservedTill"]

    }

}

open class ReservePhoneNumber_Response_ReserveRecord: Mappable {

    // Phone number in E.164 format without a '+'
    open var `phoneNumber`: String?

    // Domestic format of a phone number
    open var `formattedNumber`: String?

    // The datetime up to which the number is reserved in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. No value means that number is not reserved anymore
    open var `reservedTill`: String?

    // Internal identifier of phone number reservation; encoded data including reservation type (by brand, by account, by session), particular brand/account/session data, and reservation date and time
    open var `reservationId`: String?

    // Phone number status
    open var `status`: String?

    // The error code in case of reservation/un-reservation failure
    open var `error`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `reservedTill` <- map["reservedTill"]
        `reservationId` <- map["reservationId"]
        `status` <- map["status"]
        `error` <- map["error"]

    }

}

open class RingOut_Request_CountryInfo: Mappable {

    // Dialing plan country identifier
    open var `id`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]

    }

}

open class RingOut_Request_From: Mappable {

    // Phone number in E.164 format
    open var `phoneNumber`: String?

    // Internal identifier of a forwarding number; returned in response in the id field. Can be specified instead of the phoneNumber attribute
    open var `forwardingNumberId`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `forwardingNumberId` <- map["forwardingNumberId"]

    }

}

open class RingOut_Request_To: Mappable {

    // Phone number in E.164 format
    open var `phoneNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]

    }

}

open class RingOutInfo: Mappable {

    // Internal identifier of a RingOut call
    open var `id`: String?

    // RingOut status information
    open var `status`: RingOutStatusInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `status` <- map["status"]

    }

}

open class RingOutStatusInfo: Mappable {

    // Status of a call
    open var `callStatus`: String?

    // Status of a calling party
    open var `callerStatus`: String?

    // Status of a called party
    open var `calleeStatus`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `callStatus` <- map["callStatus"]
        `callerStatus` <- map["callerStatus"]
        `calleeStatus` <- map["calleeStatus"]

    }

}

open class RuleInfo: Mappable {

    // Forwarding number (or group) ordinal
    open var `index`: Int?

    // Number of rings for a forwarding number (or group)
    open var `ringCount`: Int?

    // Forwarding number (or group) data
    open var `forwardingNumbers`: [RuleInfo_ForwardingNumberInfo]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `index` <- map["index"]
        `ringCount` <- map["ringCount"]
        `forwardingNumbers` <- map["forwardingNumbers"]

    }

}

open class RuleInfo_ForwardingNumberInfo: Mappable {

    // Link to a forwarding number resource
    open var `uri`: String?

    // Internal identifier of a forwarding number
    open var `id`: String?

    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?

    // Title of a forwarding number
    open var `label`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]

    }

}

open class ScheduleInfo: Mappable {

    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?

    // Specific data ranges
    open var `ranges`: RangesInfo?

    // The user's schedule specified for business hours or after hours; it can also be set/retrieved calling the corresponding method
    open var `ref`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
        `ref` <- map["ref"]

    }

}

open class ServerInfo: Mappable {

    // Canonical URI of the API version
    open var `uri`: String?

    // Full API version information: uri, number, release date
    open var `apiVersions`: [VersionInfo]?

    // Server version
    open var `serverVersion`: String?

    // Server revision
    open var `serverRevision`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `apiVersions` <- map["apiVersions"]
        `serverVersion` <- map["serverVersion"]
        `serverRevision` <- map["serverRevision"]

    }

}

open class ServiceFeatureInfo: Mappable {

    // Feature name, see all available values in Service Feature List
    open var `featureName`: String?

    // Feature status, shows feature availability for the extension
    open var `enabled`: Bool?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `featureName` <- map["featureName"]
        `enabled` <- map["enabled"]

    }

}

open class ServiceInfo: Mappable {

    // Canonical URI of a service info resource
    open var `uri`: String?

    // Information on account billing plan
    open var `billingPlan`: BillingPlanInfo?

    // Information on account brand
    open var `brand`: BrandInfo?

    // Information on account service plan
    open var `servicePlan`: ServicePlanInfo?

    // Information on account target service plan
    open var `targetServicePlan`: TargetServicePlanInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `billingPlan` <- map["billingPlan"]
        `brand` <- map["brand"]
        `servicePlan` <- map["servicePlan"]
        `targetServicePlan` <- map["targetServicePlan"]

    }

}

open class ServicePlanInfo: Mappable {

    // Internal identifier of a service plan
    open var `id`: String?

    // Name of a service plan
    open var `name`: String?

    // Edition of a service plan
    open var `edition`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `edition` <- map["edition"]

    }

}

open class ShippingAddress: Mappable {

    // Name of a receiver
    open var `customerName`: String?

    // Street address, line 1 - street address, P.O. box, company name, c/o
    open var `street`: String?

    // Street address, line 2 - apartment, suite, unit, building, floor, etc.
    open var `street2`: String?

    // City name
    open var `city`: String?

    // State/province name
    open var `state`: String?

    // Zip code
    open var `zip`: String?

    // Country name
    open var `country`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `customerName` <- map["customerName"]
        `street` <- map["street"]
        `street2` <- map["street2"]
        `city` <- map["city"]
        `state` <- map["state"]
        `zip` <- map["zip"]
        `country` <- map["country"]

    }

}

open class ShippingInfo: Mappable {

    // Shipping status of the order item. It is set to 'Initial' when the order is submitted. Then it is changed to 'Accepted' when a distributor starts processing the order. Finally it is changed to Shipped which means that distributor has shipped the device.
    open var `status`: String?

    // Shipping carrier name. Appears only if the device status is "Shipped"
    open var `carrier`: String?

    // Carrier-specific tracking number. Appears only if the device status is "Shipped"
    open var `trackingNumber`: String?

    // Shipping method information
    open var `method`: [ShippingMethod]?

    // Shipping address for the order. If it coincides with the Emergency Service Address, then can be omitted. By default the same value as the emergencyServiceAddress. Multiple addresses can be specified; in case an order contains several devices, they can be delivered to different addresses
    open var `address`: [ShippingAddress]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `status` <- map["status"]
        `carrier` <- map["carrier"]
        `trackingNumber` <- map["trackingNumber"]
        `method` <- map["method"]
        `address` <- map["address"]

    }

}

open class ShippingMethod: Mappable {

    // Method identifier. The default value is "1" (Ground)
    open var `id`: String?

    // Method name, corresponding to the identifier
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]

    }

}

open class StateInfo: Mappable {

    // Internal identifier of a state
    open var `id`: String?

    // Canonical URI of a state
    open var `uri`: String?

    // Information on a country the state belongs to
    open var `country`: StateInfo_CountryInfo?

    // Short code for a state (2-letter usually)
    open var `isoCode`: String?

    // Official name of a state
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `country` <- map["country"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]

    }

}

open class StateInfo_CountryInfo: Mappable {

    // Internal identifier of a state
    open var `id`: String?

    // Canonical URI of a state
    open var `uri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]

    }

}

open class StatusInfo: Mappable {

    // A free-form user comment, describing the status change reason
    open var `comment`: String?

    // Type of suspension
    open var `reason`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `comment` <- map["comment"]
        `reason` <- map["reason"]

    }

}

open class Subscription_Request_DeliveryMode: Mappable {

    // Notifications transportation provider name. 'APNS' (Apple Push Notifications Service)
    open var `transportType`: String?

    // Optional parameter. Specifies if the message will be encrypted or not. If request contains any presence event filter the value by default is 'True' (even if specified as 'false'). If request contains only message event filters the value by default is 'False'
    open var `encryption`: Bool?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `transportType` <- map["transportType"]
        `encryption` <- map["encryption"]

    }

}

open class SubscriptionInfo: Mappable {

    // Internal identifier of a subscription
    open var `id`: String?

    // Canonical URI of a subscription
    open var `uri`: String?

    // Collection of URIs to API resources (message-store/presence/detailed presence)
    open var `eventFilters`: [String]?

    // Subscription expiration datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `expirationTime`: String?

    // Subscription lifetime in seconds. The default value is 900
    open var `expiresIn`: Int?

    // Subscription status
    open var `status`: String?

    // Subscription creation datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `creationTime`: String?

    // Delivery mode data
    open var `deliveryMode`: DeliveryMode?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `eventFilters` <- map["eventFilters"]
        `expirationTime` <- map["expirationTime"]
        `expiresIn` <- map["expiresIn"]
        `status` <- map["status"]
        `creationTime` <- map["creationTime"]
        `deliveryMode` <- map["deliveryMode"]

    }

}

open class SyncInfo: Mappable {

    // Type of synchronization
    open var `syncType`: String?

    // Synchronization token
    open var `syncToken`: String?

    // Last synchronization datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `syncTime`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `syncType` <- map["syncType"]
        `syncToken` <- map["syncToken"]
        `syncTime` <- map["syncTime"]

    }

}

open class TargetServicePlanInfo: Mappable {

    // Internal identifier of a target service plan
    open var `id`: String?

    // Name of a target service plan
    open var `name`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]

    }

}

open class TimeInterval: Mappable {

    // Time in format hh:mm
    open var `from`: String?

    // Time in format hh:mm
    open var `to`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]

    }

}

open class TimezoneInfo: Mappable {

    // Internal identifier of a timezone
    open var `id`: String?

    // Canonical URI of a timezone
    open var `uri`: String?

    // Short name of a timezone
    open var `name`: String?

    // Meaningful description of the timezone
    open var `description`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `name` <- map["name"]
        `description` <- map["description"]

    }

}

open class UnconditionalForwardingInfo: Mappable {

    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]

    }

}

open class UserPermission: Mappable {

    // Information on a permission granted
    open var `permission`: UserPermissionInfo?

    // List of active scopes for permission
    open var `scopes`: [String]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `permission` <- map["permission"]
        `scopes` <- map["scopes"]

    }

}

open class UserPermissionInfo: Mappable {

    // Internal identifier of a permission
    open var `id`: String?

    // Canonical URI of a permission resource
    open var `uri`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]

    }

}

open class VersionInfo: Mappable {

    // Canonical URI of API versions
    open var `uri`: String?

    // Version of the RingCentral REST API
    open var `versionString`: String?

    // Release date of this version
    open var `releaseDate`: String?

    // URI part determining the current version
    open var `uriString`: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `versionString` <- map["versionString"]
        `releaseDate` <- map["releaseDate"]
        `uriString` <- map["uriString"]

    }

}

open class VoicemailInfo: Mappable {

    // If 'True' then voicemails are allowed to be received
    open var `enabled`: Bool?

    // Recipient data
    open var `recipient`: RecipientInfo?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `recipient` <- map["recipient"]

    }

}

open class WeeklyScheduleInfo: Mappable {

    // Time intervals for a particular day
    open var `monday`: [TimeInterval]?

    // Time intervals for a particular day
    open var `tuesday`: [TimeInterval]?

    // Time intervals for a particular day
    open var `wednesday`: [TimeInterval]?

    // Time intervals for a particular day
    open var `thursday`: [TimeInterval]?

    // Time intervals for a particular day
    open var `friday`: [TimeInterval]?

    // Time intervals for a particular day
    open var `saturday`: [TimeInterval]?

    // Time intervals for a particular day
    open var `sunday`: [TimeInterval]?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        `monday` <- map["monday"]
        `tuesday` <- map["tuesday"]
        `wednesday` <- map["wednesday"]
        `thursday` <- map["thursday"]
        `friday` <- map["friday"]
        `saturday` <- map["saturday"]
        `sunday` <- map["sunday"]

    }

}
