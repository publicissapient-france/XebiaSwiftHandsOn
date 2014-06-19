//
//  E04_Optionals.swift
//  SwiftSImpleTP
//
//  Created by Simone Civetta on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise05() {
    runExercise05_00()
    runExercise05_01()
    runExercise05_02()
    runExercise05_03()
    runExercise05_04()
}


func runExercise05_00() {
    // Let's consider the following Obj-C code
    //
    // id hello;
    // NSLog(@"%@", hello);
    
    // How can you translate it to Swift?
    // Would that work?
    
    // @UNCOMMENT ME AND TRY
    // var hello:String
    // println(hello)
}


func runExercise05_01() {
    var hello:String? = "Hello, Swift"
    
    // @TODO set answer to the unwrapped value of the variable hello
    
    answer = hello!
    
    // Validation
    validateE5401(answer)
}


// Chaining
func runExercise05_02() {
    var myTrain:Train?
    
    // @TODO verify if the restaurant coach of the train has a name
    // If yes, set answer to "NO NAME"
    // Else, set answer to the name of the coach
    
    
    // Write your code here...
    
    
    // Validation
    validateE5402(answer)
}


// Chaining and inline
func runExercise05_03() {
    var myTrain:Train? = Train()
    myTrain?.createItalianRestaurantCoach()
    
    // @TODO verify if the restaurant coach of the train has a name
    // If yes, set answer to "NO NAME"
    // Else, set answer to the name of the coach
    // Use inline instantiation
    
    
    
    // Write your code here...
    
    
    
    // Validation
    validateE5403(answer)
}


func runExercise05_04() {
    var myTrain:Train = getFrenchRestaurantTrain()
    
    // @TODO retrieve the capiency of the restaurant coach named "Chez JP"
    // Use inline instantiation and the 'findCoachWithName' method provided
    
    
    
    // Write your code here...
    
    
    
    // Validation
    validateE5404(answer)
}

func findCoachWithName(train:Train, name:String) -> Coach? {
    
    // @TODO Implement this method
    
    
    
    // Write your code here...
    
    
    
    return nil
}