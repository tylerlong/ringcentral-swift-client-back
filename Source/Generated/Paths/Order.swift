import Foundation
import ObjectMapper
import Alamofire
open class Order: Model {
    public override var pathSegment: String {
        get{
            return "order"
        }
    }
    // Create New Order
    open func post(parameters: PostParameters? = nil, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters?.toParameters()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    open class PostParameters: Mappable {
        // List of devices to order
        open var `devices`: [DeviceInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `devices` <- map["devices"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["devices"] = self.devices
            return result
        }
    }
    open class PostResponse: Mappable {
        // List of the ordered devices
        open var `devices`: [DeviceInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `devices` <- map["devices"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["devices"] = self.devices
            return result
        }
    }
    // Get Order by ID
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // Identifier of a device
        open var `id`: String?
        // Canonical URI of an order resource
        open var `uri`: String?
        // List of the ordered devices
        open var `devices`: [DeviceInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- map["id"]
            `uri` <- map["uri"]
            `devices` <- map["devices"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["id"] = self.id
            result["uri"] = self.uri
            result["devices"] = self.devices
            return result
        }
    }
}
