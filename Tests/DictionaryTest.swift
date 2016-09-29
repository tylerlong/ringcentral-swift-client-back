//
//  DictionaryTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 8/27/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
import RingCentral

class DictionaryTest: BaseTest {

    func testCountry() {
        let expectation1 = expectation(description: "expectation1")
        let expectation2 = expectation(description: "expectation2")
        rc.getString("/restapi/v1.0/dictionary/country/46") { string, error in
            XCTAssertNil(error)
            let country = FullCountryInfo(JSONString: string!)
            XCTAssertTrue("China" == country!.name)
            expectation1.fulfill()
        }
        rc.get("/restapi/v1.0/dictionary/country/46") { (country: FullCountryInfo?, error) in
            XCTAssertNil(error)
            XCTAssertTrue("China" == country!.name)
            XCTAssertNotNil(country!.loginAllowed)
            XCTAssertTrue(false == country!.loginAllowed)
            expectation2.fulfill()
        }

        XCTAssertTrue("/restapi/v1.0/dictionary/country/46" == rc.restapi().dictionary().country("46").endpoint())
        XCTAssertTrue("/restapi/v1.0/dictionary/country" == rc.restapi().dictionary().country().endpoint())
        XCTAssertTrue("/restapi/v1.0/dictionary/timezone" == rc.restapi().dictionary().timezone().endpoint())
        XCTAssertTrue("/restapi/v1.0/dictionary/timezone/26" == rc.restapi().dictionary().timezone("26").endpoint())

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
