import PubNub
import Alamofire
import Async
import CryptoSwift


extension Subscription {

    public func new() -> SubscriptionService {
        return SubscriptionService(rc)
    }

}


open class SubscriptionService: NSObject, PNObjectEventListener {

    var rc: RestClient!
    var pubnub: PubNub?

    public var eventFilters: [String] = []
    public var listeners: [(String) -> Void] = []

    var parameters: Parameters {
        get {
            let deliveryMode: Parameters = ["transportType": "PubNub", "encryption": true]
            return ["eventFilters": eventFilters, "deliveryMode": deliveryMode]
        }
    }

    var _subscriptionInfo: SubscriptionInfo?
    var renewScheduled = false
    var subscriptionInfo: SubscriptionInfo? {
        get {
            return _subscriptionInfo
        }
        set(value) {
            _subscriptionInfo = value
            if _subscriptionInfo != nil && !renewScheduled {
                Async.background(after: Double(_subscriptionInfo!.expiresIn! - 120)) {
                    self.renew() { error in
                        self.renewScheduled = false
                    }

                }
                renewScheduled = true
            }
        }
    }

    public init(_ rc: RestClient) {
        self.rc = rc
    }

    public func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
        let base64Message = message.data.message as! String
        let encrypted = Array(base64Message.utf8)
        let padded = PKCS7().add(to: encrypted, blockSize: AES.blockSize)
        let key: [UInt8] = Array(subscriptionInfo!.deliveryMode!.encryptionKey!.utf8)
        let iv: [UInt8] = AES.randomIV(AES.blockSize)
        let decrypted = try! AES(key: key, iv: iv, blockMode: .ECB, padding: PKCS7()).decrypt(padded)
        let result = String(data: Data(bytes: decrypted), encoding: String.Encoding.utf8)!
        for listener in listeners {
            listener(result)
        }
    }

    open func register(callback: @escaping (_ error: HTTPError?) -> Void) {
        if alive() {
            renew(callback: callback)
        } else {
            subscribe(callback: callback)
        }
    }

    open func subscribe(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.restapi("v1.0").subscription().post(parameters: parameters) { subscriptionInfo, error in
            if let error = error {
                return callback(error)
            }
            self.subscriptionInfo = subscriptionInfo


            let configuration = PNConfiguration(publishKey: "", subscribeKey: subscriptionInfo!.deliveryMode!.subscriberKey!)
            self.pubnub = PubNub.clientWithConfiguration(configuration)
            self.pubnub!.addListener(self)
            self.pubnub!.subscribeToChannels([subscriptionInfo!.deliveryMode!.address!], withPresence: true)

            callback(nil)
        }
    }

    open func renew(callback: @escaping (_ error: HTTPError?) -> Void) {
        if !alive() { // Remove() has been called
            return callback(HTTPError(statusCode: -1, message: "Subscription has been removed"))
        }
        rc.restapi("v1.0").subscription(subscriptionInfo!.id!).put(parameters: parameters) { subscriptionInfo, error in
            if let error = error {
                if error.statusCode == 404 {
                    return self.subscribe(callback: callback)
                }
                return callback(error)
            }
            self.subscriptionInfo = subscriptionInfo
            callback(nil)
        }
    }

    func alive() -> Bool {
        if let _ = pubnub, let subscriptionInfo = subscriptionInfo {
            if subscriptionInfo.id != nil {
                if let deliveryMode = subscriptionInfo.deliveryMode {
                    if deliveryMode.subscriberKey != nil && deliveryMode.address != nil {
                        return true
                    }
                }
            }
        }
        return false
    }

}
