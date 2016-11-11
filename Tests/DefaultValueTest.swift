import XCTest
import RingCentral


class DefaultValueTest: BaseTest {

    func testAccountId() {
        let expectation1 = expectation(description: "expectation1")
        rc.restapi("v1.0").account("~").extension("~").get() { extensionInfo, error in
            XCTAssertNil(error)
            XCTAssertNotNil(extensionInfo?.name)
            expectation1.fulfill()
        }

        let expectation2 = expectation(description: "expectation1")
        rc.restapi().account("~").extension("~").get() { extensionInfo, error in
            XCTAssertNil(error)
            XCTAssertNotNil(extensionInfo?.name)
            expectation2.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }
    
}
