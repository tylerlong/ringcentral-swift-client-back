//
//  DictionaryTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 8/27/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
@testable import RingCentral_macOS

class DictionaryTest: BaseTest {

    func testCountry() {
        let expectation1 = expectation(description: "expectation1")
        let expectation2 = expectation(description: "expectation2")
        rc.authorize("17322764403", ext: "", password: "RNG94405") { token, error in
            XCTAssertNil(error)
            rc.getString("/restapi/v1.0/dictionary/country/46") { string, error in
                XCTAssertNil(error)
                let country = Country(JSONString: string!)
                XCTAssertTrue("China" == country!.name)
                expectation1.fulfill()
            }
            rc.get("/restapi/v1.0/dictionary/country/46") { (country: Country?, error) in
                XCTAssertNil(error)
                XCTAssertTrue("China" == country!.name)
                XCTAssertNotNil(country!.loginAllowed)
                XCTAssertTrue(false == country!.loginAllowed)
                expectation2.fulfill()
            }
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
