//
//  E02_Class.swift
//  SwiftSImpleTP
//
//  Created by jc on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise02() {
    runExercise02_01()
    runExercise02_02()
    runExercise02_03()
    runExercise02_04()
    runExercise02_05()
    runExercise02_06()
}

enum CarOption {
    case Airbag
    case Seabelt
    case SpareWheel
}

class Car: Printable {
    let brand: String
    let year: Int
    let model: String
    // var distance: Int
    let options: Dictionary<CarOption, Bool>
    var argus: Int { return 0 }
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
        self.options = [:]
    }
    
    var description: String { return "" }
}

/**
 * this exercise is about INIT
 * Implement a convenient Car init which take brand and model as parameter and set year to 2014
 */
func runExercise02_01() {
    // UNCOMMENT THIS LINE
    // let clio1: Car = Car(brand: "Renault", model: "Clio")
}

/**
* this exervise is about COMPUTED PROPERTY
* Implement argus as a computed readonly property returning distance/year
*/
func runExercise02_02() {
    var car = Car(brand: "Renault", model: "Clio", year: 2014)
    
    assert(car.argus == 0)
    // UNCOMMENT THIS LINE
   // car.distance = 50_000
    assert(car.argus == 24)
}

/**
 * this exervise is about PROTOCOL
 * Implement Printable protocol so that Car object print its brand + model
 */
func runExercise02_03() {
    var car =  Car(brand: "Renault", model: "Clio", year: 2014)
    
    assert("\(car)" == "Renault Clio", "Implement Printable protocol");
}

/**
* this exervise is about OPERATOR
* Implement required operators so that Car objects are comparable
*/
func runExercise02_04() {
    let megane: Car = Car(brand: "Renault", model: "Megane", year: 2012)
    let clio: Car = Car(brand: "Renault", model: "Clio", year: 2013)
    let clio2: Car = Car(brand: "Renault", model: "Clio", year: 2014)
    
    // UNCOMMENT THESE LINES
    //assert(clio != megane)
    //assert(clio == clio2)
}

/**
 * this exercise is about SUBSCRIPT
 * Implement subscript getter/setter so that it take/return a CarOption
 * NOTE: There's a trap ;)
 * (Uncomment exercise test lines)
**/
func runExercise02_05() {
    var car = Car(brand: "Renault", model: "Clio", year: 2014)

    // UNCOMMENT THESE LINES
    //car[.Airbag] = true
    //car[.SpareWheel] = false
    
    assert(car.options.count == 2)
    assert(car.options[.Airbag] == true)
    assert(car.options[.SpareWheel] == false)
}

/**
** this exervise is about OBERSERVERS
** Force distance to be <= 100 000 when setted
*/
func runExercise02_06() {
    var car = Car(brand: "Renault", model: "Clio", year: 2014)

    // UNCOMMENT THESE LINES
    // car.distance = 101_000
    // assert(car.distance == 100_000, "Set car.distance to 100 000 when > 100 000")
}