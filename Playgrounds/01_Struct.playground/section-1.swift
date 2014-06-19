// Playground - noun: a place where people can play

import UIKit

/// everything is a Struct/class/enum
2.succ()

/// Copy

var car = ["price": 10_000]

///

func upgradeCar(var car: Dictionary<String, Int>) {
    car["price"] = 20_000
}

upgradeCar(car)
car["price"]

/// operator

var string = "hello" + " world"

/// Immutable

var immutable = string
immutable += "No way"


