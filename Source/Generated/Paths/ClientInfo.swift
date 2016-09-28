import Foundation
import ObjectMapper
open class ClientInfo: Model {
    public override var pathSegment: String {
        get{
            return "client-info"
        }
    }
    func `customData`(_id: String? = nil) -> CustomData {
        return CustomData(parent: self, _id: _id)
    }
}
