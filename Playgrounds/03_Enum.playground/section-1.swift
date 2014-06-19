// Playground - noun: a place where people can play

import UIKit

enum UserState : Int {
    case LoggedIn   = 0
    case LoggedOut  = 20
}

var s = UserState.LoggedOut
s.toRaw()

///

enum LangEnum {
    case ObjC
    case Swift
}

///

enum Response: Printable {
    case Error
    case Success(Int, String)

    var description: String {
    switch self {
    case .Error:
        return "error"
    case .Success(let status, let string):
        return "\(status) (\(string))"
        }
    }
}

var http_response = Response.Success(200, "OK")

// Should return "Response: 200 (OK)"
"Response: \(http_response)" // Your 1st Playground bug!
