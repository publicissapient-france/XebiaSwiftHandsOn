// Playground - noun: a place where people can play

import UIKit

2.succ() // Int is a Struct

///

var car = ["price": 10_000]

upgradeCar(&car)
car["price"]

///

func upgradeCar(inout car: Dictionary<String, Int>) {
    car["price"] = 20_000
}

///

var string = "hello" + " world"

///

string += " \(2)" // Mutable String

///

let immutable = string
//immutable += "No way"


