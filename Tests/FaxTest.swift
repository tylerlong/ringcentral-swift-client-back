import XCTest
import RingCentral


class FaxTest: BaseTest {

    func testSendingFax() {
        let expectation1 = expectation(description: "expectation1")

        let parameters = FaxPath.PostParameters(to: [CallerInfo(phoneNumber: Config.getInstance().receiver!)])
        rc.restapi("v1.0").account("~").extension("~").fax().post(parameters: parameters) { messageInfo, error in
            XCTAssertNil(error)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
