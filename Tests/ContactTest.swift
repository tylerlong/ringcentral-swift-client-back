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
        XCTAssertTrue("/restapi/v1.0/account/~/extension/~/address-book" == endpoint)

        let expectation1 = expectation(description: "expectation1")
        addressBook.contact().list(parameters: ["phoneNumber": phoneNumber]) { list, error in
            XCTAssertNil(error)
            for item in list!.records! {
                let expectation2 = self.expectation(description: "expectation2")
                addressBook.contact("\(item.id!)").delete() { error in
                    XCTAssertNil(error)
                    expectation2.fulfill()
                }
            }
            expectation1.fulfill()
        }

        // list
        let expectation3 = expectation(description: "expectation3")
        addressBook.contact().list() { list, error in
            XCTAssertNil(error)
            XCTAssertNotNil(list)
            XCTAssertTrue(1 == list!.paging!.page)
            expectation3.fulfill()
        }

        // create
        let expectation4 = expectation(description: "expectation4")
        addressBook.contact().post(parameters: [ "firstName": "Tyler", "lastName": "Long", "homePhone": phoneNumber ]) { contact, error in
            XCTAssertNil(error)
            XCTAssertNotNil(contact)
            XCTAssertTrue("long" == contact!.lastName)
            expectation4.fulfill()
        }

        waitForExpectations(timeout: 20) { error in
            XCTAssertNil(error)
        }
    }
    
}
