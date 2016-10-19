import XCTest
import RingCentral
import Async
import Alamofire

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

    func testSMSNotification() {
        let subscription = rc.restapi("v1.0").subscription().new()
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
        var count = 0
        subscription.listeners.append { message in
            print("before")
            print(message)
            print("after")
            count += 1
        }

        let expectation1 = expectation(description: "expectation1")
        subscription.register() { error in
            XCTAssertNil(error)
            let parameters = Sms.PostParameters(
                from: CallerInfo(phoneNumber: Config.getInstance().username!),
                to: [CallerInfo(phoneNumber: Config.getInstance().receiver!)],
                text: "hello world"
            )
//            let parameters: Parameters = [
//                "from": ["phoneNumber": Config.getInstance().username!],
//                "to":[["phoneNumber": Config.getInstance().receiver!]],
//                "text": "hello world"
//            ]
            rc.restapi("v1.0").account("~").extension("~").sms().post(parameters: parameters) { messageInfo, error in
                XCTAssertNil(error)
                expectation1.fulfill()
            }
        }

        let expectation2 = expectation(description: "expectation2")
        Async.main(after: 15.0) {
            XCTAssertTrue(count >= 1)
            expectation2.fulfill()
        }

        waitForExpectations(timeout: 30) { error in
            XCTAssertNil(error)
        }
    }

}
