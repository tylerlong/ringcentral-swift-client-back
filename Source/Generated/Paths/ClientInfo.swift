import Foundation
import ObjectMapper
open class ClientInfo: Model {
    public override var pathSegment: String {
        get{
            return "client-info"
        }
    }
    open func `customData`(_ _id: String) -> CustomData {
        return CustomData(parent: self, _id: _id)
    }
}
