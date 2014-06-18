//
//  01_Struct.swift
//  SwiftSImpleTP
//
//  Created by jc on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise01() {
    runExercise01_01()
    runExercise01_02()
    runExercise01_03()
    runExercise01_04()
    runExercise01_05()
}

struct Position {
    var x:Float;
    var y:Float;
    
    func translate(translation: Float) {
        // @TODO translate "x" and "y" by "translation"
    }
}

/**
 * This exercise is about "variables" DECLARATION
 * Set false to key "OK" AFTER initialization
*/
func runExercise01_01() {
    let dict = ["OK": true, "KO": false]
    
    // UNCOMMENT THIS LINE!
    // dict["OK"] = false
    assert(dict["OK"] == false, "set false to key 'OK' (AFTER Dictionary initialization)")
}

/**
 * This exercise is about struct passing to functions
 * You need to implement function update (global) which take a Dictionary and change
 * its "name" key to "Swift"
 */
func runExercise01_02() {
    var data = ["name": "Xebia", "lang": "ObjC"]
    
    // UNCOMMENT THIS LINE
    //update(&data)
    assert(data["lang"] == "Swift", "change lang to Swift into update function");
}

/**
 * This exercise is about struct passing to functions
 * You need to implement function update (global) which take a Array and change
 * this 0ieme index to "Ruby"
 */
func runExercise01_03() {
    var data = ["PHP", "Python"]
    
    // UNCOMMENT THIS LINE
    //update(data)
    assert(data[0] == "Ruby", "Change data[0] into update function")
}

/**
 * This exercise is about struct MUTABILITY
 * Implement the method translate(t: Int) into Position
 * It add t to both x and y Position attributes
 */
func runExercise01_04() {
    var myPos = Position(x: 0, y: 0)
    myPos.translate(5)
    
    assert(myPos.x == 5, "Translate should move x by 5")
    assert(myPos.y == 5, "Translate should move y by 5")
}

/**
 * This exercise is about struct OPERATOR(s)
 */
func runExercise01_05() {
    var pos = Position(x: 0, y: 200)
    
    // UNCOMMENT THIS LINE
    //pos += Position(x: 10, y: -100)
    
    assert(pos.x == 10, "implement += operator")
    assert(pos.y == 100, "implement += operator")
}