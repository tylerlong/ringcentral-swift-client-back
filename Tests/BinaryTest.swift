//
//  BinaryTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 11/3/16.
//
//

import XCTest
import RingCentral

class BinaryTest: BaseTest {

    func testProfileImage() {
        let expectation1 = expectation(description: "expectation1")

        let ext = rc.restapi("v1.0").account("~").extension("~")
        ext.profileImage().get() { image, error in
            XCTAssertNil(error)
            XCTAssertNotNil(image?.data)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
