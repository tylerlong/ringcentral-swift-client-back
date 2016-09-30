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

    func testContact() {

        let phoneNumber = "+15889546648"
        let addressBook = rc.restapi("v1.0").account("~").extension("~").addressBook()
        let endpoint = addressBook.endpoint()
        XCTAssertTrue("/restapi/v1.0/account/~/extension/~/address-book" == endpoint)

        // remove contacts with my phone number
        let expectation1 = expectation(description: "expectation1")
        addressBook.contact().list(parameters: ["phoneNumber": phoneNumber]) { list, error in
            XCTAssertNil(error)
            for item in list!.records! {
                addressBook.contact("\(item.id!)").delete() { error in
                    XCTAssertNil(error)
                }
            }
            expectation1.fulfill()
        }
        sleep(5)

        // list
        var total = 0
        let expectation3 = expectation(description: "expectation3")
        addressBook.contact().list() { list, error in
            XCTAssertNil(error)
            XCTAssertNotNil(list)
            XCTAssertTrue(1 == list!.paging!.page)
            total = list!.paging!.totalElements!
            expectation3.fulfill()
        }
        sleep(1)

        // create
        let expectation4 = expectation(description: "expectation4")
        addressBook.contact().post(parameters: [ "firstName": "Tyler", "lastName": "Long", "homePhone": phoneNumber ]) { contact, error in
            XCTAssertNil(error)
            XCTAssertNotNil(contact)
            XCTAssertTrue("Long" == contact!.lastName)
            expectation4.fulfill()
        }
        sleep(5)

        // list again
        let expectation5 = expectation(description: "expectation5")
        addressBook.contact().list(){ list, error in
            XCTAssertNil(error)
            XCTAssertNotNil(list)
            XCTAssertTrue(total + 1 == list!.paging!.totalElements!)
            expectation5.fulfill()
        }
        sleep(1)

        // search
        let expectation6 = expectation(description: "expectation6")
        var contact: PersonalContactInfo? = nil
        addressBook.contact().list(parameters: ["phoneNumber": phoneNumber]) { list, error in
            XCTAssertNil(error)
            XCTAssertNotNil(list)
            XCTAssertTrue(1 == list!.paging!.totalElements!)
            contact = list!.records!.first!
            expectation6.fulfill()
        }
        sleep(1)

        // update
//        contact!.lastName = "Liu";
//        addressBook.contact("\(contact!.id!)").put(parameters: contact!) { contact2, error in
//            XCTAssertNil(error)
//            XCTAssertNotNil(contact2)
//            XCTAssertTrue("Liu" == contact2!.lastName)
//        }


        waitForExpectations(timeout: 20) { error in
            XCTAssertNil(error)
        }
    }
    
}
