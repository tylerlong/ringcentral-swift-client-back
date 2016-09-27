//
//  Model.swift
//  RingCentral
//
//  Created by Tyler Liu on 9/27/16.
//
//

import Foundation


extension String {
    func trimLeft(_ c: Character = " ") -> String {
        var str = self
        while str.characters.last! == c {
            str = str.substring(to: str.index(str.endIndex, offsetBy: -1))
        }
        return self
    }

    func trimRight(_ c: Character = " ") -> String {
        var str = self
        while str.characters.first! == c {
            str = str.substring(from: str.index(str.startIndex, offsetBy: 1))
        }
        return self
    }
}

func <= (left: String, right: String) -> String {
    return left.trimRight("/") + "/" + right.trimLeft("/")
}


public protocol Model {
    var _id: String? {get set}
    var parent: Model {get set}
    var rc: RestClient {get}
    var pathSegment: String {get}
    func endpoint(withId: Bool) -> String
}

extension Model {
    func endpoint(withId: Bool = true) -> String {
        var url = parent.endpoint() <= pathSegment
        if withId && _id != nil {
            url = url <= _id!
        }
        return "/" + url.trimLeft("/")
    }

    var rc: RestClient {
        get {
            return parent.rc
        }
    }
}
