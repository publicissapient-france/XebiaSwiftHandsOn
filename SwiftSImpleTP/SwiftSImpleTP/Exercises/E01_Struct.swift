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
}

struct Position {
    var x:Float;
    var y:Float;
    
    mutating func translate(translation: Float) {
        self.x += translation;
        self.y += translation;
    }
}

@infix func + (pos1: Position, pos2: Position) -> Position {
    return Position(x: pos1.x + pos2.x, y: pos1.y + pos2.y)
}

@assignment func += (inout pos1: Position, pos2: Position) {
    pos1 = pos1 + pos2
}


func runExercise01_01() {
    var myPos = Position(x: 0, y: 0)
    myPos.translate(5)
    
    assert(myPos.x == 5, "Translate should move x of 5")
    assert(myPos.y == 5, "Translate should move y of 5")
}

func runExercise01_02() {
    var pos = Position(x: 0, y: 200)
    pos += Position(x: 10, y: -100)
    
    assert(pos.x == 10, "implement == operator")
    assert(pos.y == 100, "implement == operator")
}