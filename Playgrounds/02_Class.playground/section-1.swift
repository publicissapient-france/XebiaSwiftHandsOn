// Playground - noun: a place where people can play

import UIKit

///

class Car {
    var year: Int = 2014
    var model: String {
        get { return "AG200" + self.brand }
    }
    var brand: String {
        willSet { println("Switching to a \(newValue)") }
        didSet { println("Switched to \(self.brand) ") }
    }
    
    init(brand: String) {
        self.brand = brand
    }
}

///

var seat = Car(brand: "Seat")
seat.brand = "Clio"
seat.model