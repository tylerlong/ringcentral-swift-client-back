import Foundation
import ObjectMapper
open class Dictionary: Model {
    public override var pathSegment: String {
        get{
            return "dictionary"
        }
    }
}
