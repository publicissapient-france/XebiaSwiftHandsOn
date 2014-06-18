//
//  E05_Closure.swift
//  SwiftSImpleTP
//
//  Created by Pascal Drouilly on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise06() {
    runExercise06_01()
    runExercise06_02()
    runExercise06_03()
    runExercise06_04()
}


func runExercise06_01() {
    let array = ["allo", "Paris", "chat", "chien"]
    var upper: Array<String> = []
    
    for s in array {
        upper.append(s.uppercaseString)
    }
    
// TODO
    // use closure and 'map' instead of for-in
    
    
    
    println("uppercase array: \(upper)")
}

func runExercise06_02() {
    let array = ["allo", "Paris", "chat", "chien"]
    var answer: Array<String> = []
    
// TODO
    // filter out word begining with letter 'c'
    
    
    println("array without word begining by 'c': \(answer)")
}

func runExercise06_03() {
    let array = ["Cat.JPG", "DOG.png", "House.jpg", "You.gif", "her.GIF"]
    var answer: Array<String> = []

// TODO
    // keep only jpg, correct name to be all lowercase
    
    
    println("only jpg: \(answer)")
}

func runExercise06_04() {
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
    // func makeIncrementorBis(...
    // ...
    
    //let incBis = makeIncrementorBis(5)
    //println("Incrementor (+N): \(incBis(7))")
    
// TODO
    // make a factory for an incrementor that keep a running total. ie: every time you run it continue to increase from where it was
    //func makeIncrementorTer(...
    // ...
    
    //let incTer = makeIncrementorTer(5)
    //println("Incrementor (keep total): \(incTer()), \(incTer()), \(incTer()), ...")
}


