//
//  E04_Optionals.swift
//  SwiftSImpleTP
//
//  Created by Simone Civetta on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise05() {
//    runExercise05_00()
    runExercise05_01()
//    runExercise05_02()
    runExercise05_03()
    runExercise05_04()
    runExercise05_05()
//    runExercise05_06()
    runExercise05_07()
}


func runExercise05_00() {
//    var hello:String
//    println(hello)
    
//    id hello;
//    NSLog(@"%@", hello);
}


func runExercise05_01() {
    var hello:String? = "Hello, Swift"
    
    // Wrapped
    println(hello)
    
    // Unwrapped
    println(hello!)
}


func runExercise05_02() {
    var hello:String?
    
    // Wrapped
    println(hello)
    
    // Unwrapped: generate an error
    println(hello!)
}

func runExercise05_03() {
    var myTrain:Train?
    var restaurantCoachName = myTrain?.restaurantCoach?.name
    if restaurantCoachName {
        println(restaurantCoachName)
    }
}


func runExercise05_04() {
    var myTrain:Train? = Train()
    myTrain?.createUnnamedRestaurantCoach()
    if let restaurantCoachName = myTrain?.restaurantCoach?.name {
        println(restaurantCoachName)
    }
}


func runExercise05_05() {
    var myTrain:Train? = Train()
    myTrain?.createItalianRestaurantCoach()
    if let restaurantCoachName = myTrain?.restaurantCoach?.name {
        println(restaurantCoachName)
    }
}


func runExercise05_06() {
    var myTrain:Train? = Train()
    println(myTrain?.restaurantCoach!.name)
}


func runExercise05_07() {
    var myTrain:Train = Train()
    myTrain.createFrenchRestaurantCoach()
    
    // Auto-inferred
    var daLuigiCoach = myTrain.findCoachWithName("Da Luigi")
    println(daLuigiCoach)
    
    if let chezJeanPierreCoachUnwrapped = myTrain.findCoachWithName("Chez Jean-Pierre")?.name {
        println("The coach you're looking for is \(chezJeanPierreCoachUnwrapped)")
    }
}