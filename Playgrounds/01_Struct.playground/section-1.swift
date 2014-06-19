// Playground - noun: a place where people can play

import UIKit

/// everything is a Struct/class/enum
2.succ()

/// Immutable

var car = ["price": 10_000]

upgradeCar(&car)
car["price"]

///

func upgradeCar(inout car: Dictionary<String, Int>) {
    car["price"] = 20_000
}

/// operator

var string = "hello" + " world"

/// interpolation

string += " \(2)" // Mutable String

///

let immutable = string
//immutable += "No way"


