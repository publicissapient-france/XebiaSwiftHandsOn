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

enum Response {
    case Error
    case Success(Int)
}

///

var res = Response.Success(200)
//res.toRaw()

///

switch res {
case .Success(let status):
    println("status is \(status)")
default:
    "Not handled"
}