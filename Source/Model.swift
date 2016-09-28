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
        while str.characters.last == c {
            str = str.substring(to: str.index(str.endIndex, offsetBy: -1))
        }
        return str
    }

    func trimRight(_ c: Character = " ") -> String {
        var str = self
        while str.characters.first == c {
            str = str.substring(from: str.index(str.startIndex, offsetBy: 1))
        }
        return str
    }
}

func <= (left: String, right: String) -> String {
    return left.trimRight("/") + "/" + right.trimLeft("/")
}


public protocol iModel {
    var _id: String? {get set}
    var parent: iModel? {get set}
    var rc: RestClient {get set}
    var pathSegment: String {get}
    func endpoint(withId: Bool) -> String
}

extension iModel {
    public func endpoint(withId: Bool = true) -> String {
        if parent == nil {
            return ""
        }
        var url = parent!.endpoint() <= pathSegment
        if withId && _id != nil {
            url = url <= _id!
        }
        return "/" + url.trimLeft("/")
    }
}


open class Model: iModel {
    public var pathSegment: String {
        return ""
    }

    public var parent: iModel?

    public var _id: String?

    public var rc: RestClient

    public init(parent: iModel?, _id: String? = nil, rc: RestClient? = nil) {
        self.parent = parent
        self._id = _id
        if rc == nil {
            self.rc = parent!.rc
        } else {
            self.rc = rc!
        }
    }
}
