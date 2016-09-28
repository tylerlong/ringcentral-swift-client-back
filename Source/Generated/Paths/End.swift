import Foundation
import ObjectMapper
open class End: Model {
    public override var pathSegment: String {
        get{
            return "end"
        }
    }
    // End Current Meeting
    func post() {
    }
}
