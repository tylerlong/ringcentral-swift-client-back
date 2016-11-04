//
//  BinaryTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 11/3/16.
//
//

import XCTest
import RingCentral
import Alamofire

class BinaryTest: BaseTest {

    func testDownload() {
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

    func testUpload() {
        let expectation1 = expectation(description: "expectation1")

        let ext = rc.restapi("v1.0").account("~").extension("~")
        let url = ext.profileImage().url()

        var headers: [String: String] = [:]
        if rc.token != nil && headers["Authorization"] == nil {
            headers["Authorization"] = "Bearer \(rc.token!.access_token!)"
        }

        Alamofire.download("https://www.baidu.com/img/bd_logo1.png").responseData { response in
            if let data = response.result.value {
                Alamofire.upload(
                    multipartFormData: { multipartFormData in
                        multipartFormData.append(data, withName: "image", fileName: "test.png", mimeType: "image/png")
                    },
                    to: url,
                    headers: headers,
                    encodingCompletion: { encodingResult in
                        switch encodingResult {
                        case .success(let upload, _, _):
                            upload.responseData { response in
                                XCTAssertTrue(204 == response.response!.statusCode)
                                expectation1.fulfill()
                            }
                        case .failure(let encodingError):
                            print(encodingError)
                        }
                    }
                )
            }
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
