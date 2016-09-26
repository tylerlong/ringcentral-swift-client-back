//
//  RingCentralTests.swift
//  RingCentralTests
//
//  Created by Tyler Liu on 8/24/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
import RingCentral_macOS

let config = Config.getInstance()
let rc = RestClient(appKey: config.appKey!, appSecret: config.appSecret!, production: config.production!)

class BaseTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUp")
    }
    
    override func tearDown() {
        print("tearDown")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

}
