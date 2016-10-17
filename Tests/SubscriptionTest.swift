import XCTest
import RingCentral

class SubscriptionTest: BaseTest {

    func testRegister() {
        let subscription = rc.restapi("v1.0").subscription().new()
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/presence?detailedTelephonyState=true")
        subscription.listeners.append { message in
            print(message)
        }
        
        let expectation1 = expectation(description: "expectation1")
        subscription.register() { error in
            XCTAssertNil(error)
            expectation1.fulfill()
        }

        let expectation2 = expectation(description: "expectation2")
        subscription.subscribe() { error in
            XCTAssertNil(error)
            subscription.renew() { error in
                XCTAssertNil(error)
                expectation2.fulfill()
            }
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
