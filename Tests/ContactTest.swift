//
//  ContactTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 9/29/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
import RingCentral

class ContactTest: BaseTest {

    func testCountry() {

        let phoneNumber = "+15889546648"
        let addressBook = rc.restapi("v1.0").account("~").extension("~").addressBook()
        let endpoint = addressBook.endpoint()
        XCTAssertTrue("/restapi/v1.0/account/~/extension/~/address-book" == addressBook.endpoint())

        let expectation1 = expectation(description: "expectation1")
        rc.getString("/restapi/v1.0/dictionary/country/46") { string, error in
            XCTAssertNil(error)
            let country = FullCountryInfo(JSONString: string!)
            XCTAssertTrue("China" == country!.name)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }
    
}
