// Playground - noun: a place where people can play

import UIKit

protocol Color {
    func color() -> String
}

class Mission : Color {
    func color() -> String  {
            return "red"
    }
}

class Car {
    var brand: String {
        willSet { println("Switching to a \(newValue)") }
    }
    
    init(brand: String) {
        self.brand = brand
    }
}

var seat = Car(brand: "Seat")
seat.brand = "Clio"

class Magazine {
    var pageCount: Int = 0
    var price: Float { return Float(self.pageCount) * 0.1 }
}

var mag = Magazine()
mag.pageCount = 20
println(mag.price)
