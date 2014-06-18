// Playground - noun: a place where people can play

import UIKit

enum UserState : Int, Printable {
    case LoggedIn   = 0
    case LoggedOut  = 20
    
    var description: String {
    switch self {
        case .LoggedIn:
            return "LoggedIn"
        case .LoggedOut:
            return "LoggedOut"
    }
    }
}

var s = UserState.LoggedOut
s.toRaw()

"s desc is \(s)" // Your 1st Playground bug!

///

enum LangEnum {
    case ObjC
    case Swift
}

///
