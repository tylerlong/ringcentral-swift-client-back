# RingCentral Swift Client


## Requirements

- iOS 9.0+ / macOS 10.11+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.0+
- Swift 3.0+


## Installation

The recommended way to install this framework is via [Carthage](https://github.com/Carthage/Carthage).

Add the following to your Cartfile:


    github "tylerlong/ringcentral-swift-client"


## Quick Start

    let rc = RestClient(appKey: "", appSecret: "", production: false)
    rc.authorize("username", ext: "", password: ) { token, error in
        if error == nil {
            print("Authorized!")
            let parameters = Sms.PostParameters(
                from: CallerInfo(phoneNumber: "123456789"),
                to: [CallerInfo(phoneNumber: "123456789")],
                text: "hello world"
            )
            rc.restapi("v1.0").account("~").extension("~").sms().post(parameters: parameters) { messageInfo, error in
                if error == nil {
                    print("SMS sent!")
                } else {
                    print("Failed to send SMS")
                }
            }
        } else {
            print("Failed to authorize!")
        }
    }


## License

This project is released under the MIT license.


## todo

1. binary data downloading & uploading
