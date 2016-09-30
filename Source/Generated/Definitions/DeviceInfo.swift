import Foundation
import ObjectMapper
import Alamofire
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
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        result["sku"] = self.sku
        result["type"] = self.type
        result["name"] = self.name
        result["serial"] = self.serial
        result["computerName"] = self.computerName
        result["model"] = self.model
        result["extension"] = self.extension
        result["emergencyServiceAddress"] = self.emergencyServiceAddress
        result["phoneLines"] = self.phoneLines
        result["shipping"] = self.shipping
        result["boxBillingId"] = self.boxBillingId
        return result
    }
}
