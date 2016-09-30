import Foundation
import ObjectMapper
import Alamofire
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
    open func toParameters() -> Parameters {
        return [:]
    }
}
