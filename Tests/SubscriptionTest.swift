import XCTest
import RingCentral

class SubscriptionTest: BaseTest {

    func testRegister() {
        let subscription = rc.restapi("v1.0").subscription().new()
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
        
        subscription.register()
    }

}
