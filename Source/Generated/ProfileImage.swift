import Foundation
import ObjectMapper
open class ProfileImage: Model {
    public override var pathSegment: String {
        get{
            return "profile-image"
        }
    }
    // Get Scaled Profile Image
    func get() -> NSData {
        return NSData()
    }
}
