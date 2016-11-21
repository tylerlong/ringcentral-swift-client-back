import Foundation
import ObjectMapper
import Alamofire
open class OrderPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "order"
        }
    }
    // Create New Order
    open func post(callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // Create New Order
    open func post(parameters: Parameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // Create New Order
    open func post(parameters: PostParameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // List of devices to order
        open var `devices`: [DeviceInfo]?
        public init() {
        }
        convenience public init(devices: [DeviceInfo]? = nil) {
            self.init()
            self.devices = `devices`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `devices` <- map["devices"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    open class PostResponse: Mappable {
        // List of the ordered devices
        open var `devices`: [DeviceInfo]?
        public init() {
        }
        convenience public init(devices: [DeviceInfo]? = nil) {
            self.init()
            self.devices = `devices`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `devices` <- map["devices"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
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
        public init() {
        }
        convenience public init(id: String? = nil, uri: String? = nil, devices: [DeviceInfo]? = nil) {
            self.init()
            self.id = `id`
            self.uri = `uri`
            self.devices = `devices`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- map["id"]
            `uri` <- map["uri"]
            `devices` <- map["devices"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
