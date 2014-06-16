//
//  E05_Closure.swift
//  SwiftSImpleTP
//
//  Created by Pascal Drouilly on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise05() {
    runExercise05_01()
    runExercise05_02()
    runExercise05_03()
    runExercise05_04()
}


func runExercise05_01() {
    let array = ["allo", "Paris", "chat", "chien"]
    var upper: Array<String> = []
    
    for s in array {
        upper.append(s.uppercaseString)
    }
    
// TODO
    // use closure and 'map' instead of for-in
    upper = array.map({$0.uppercaseString})
    
    
    println("uppercase array: \(upper)")
}

func runExercise05_02() {
    let array = ["allo", "Paris", "chat", "chien"]
    var answer: Array<String> = []
    
// TODO
    // filter out word begining with letter 'c'
    answer = array.filter {
        return !($0.hasPrefix("c"))
    }
    
    println("array without word begining by 'c': \(answer)")
}

func runExercise05_03() {
    let array = ["Cat.JPG", "DOG.png", "House.jpg", "You.gif", "her.GIF"]
    var answer: Array<String> = []

// TODO
    // keep only jpg, correct name to be all lowercase
    answer = array.map {
        $0.lowercaseString
    }.filter {
        $0.hasSuffix(".jpg")
    }
    
    println("only jpg: \(answer)")
}

func runExercise05_04() {
    func makeIncrementor() -> (Int) -> Int {
        func incrementor(a: Int) -> Int {
            return a + 1
        }
        return incrementor
    }
    
    let inc = makeIncrementor()
    println("Incrementor (+1): \(inc(7))")
    
// TODO
    // make a factory for incrementor that accept an argument, the increment, instead of +1
    func makeIncrementorBis(n: Int) -> (Int) -> Int {
        let incrementor = {
            (a: Int) -> Int in
            return a + n    // capture the argument
        }
        return incrementor
    }
    
    let incBis = makeIncrementorBis(5)
    println("Incrementor (+N): \(incBis(7))")
    
// TODO
    // make a factory for an incrementor that keep a running total. ie: every time you run it continue to increase from where it was
    func makeIncrementorTer(n: Int) -> () -> Int {
        var total = 0
        func incrementor() -> Int {
            total += n      // capture the arg, and capture a value from its enclosing function
            return total
        }
        return incrementor
    }
    
    let incTer = makeIncrementorTer(5)
    println("Incrementor (keep total): \(incTer()), \(incTer()), \(incTer()), ...")
}


