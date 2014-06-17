//
//  E03_Tuples.swift
//  SwiftSImpleTP
//
//  Created by Simone Civetta on 17/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise08() {
    runExercise08_00()
    runExercise08_01()
    runExercise08_02()
    runExercise08_03()
    runExercise08_04()
    
    runExercise08_05()
}


func runExercise08_00() {
    // Air conditioning status:
    // We would like to know if a coach has or not an air conditioning system
    // and, if not, we would like to know the reason
    
    // In objective-c, you could create a struct or a class wrapping the two information
    // ... but in Swift?
    
    var coach = Coach()
    coach.getAirConditioningStatus()
}


// Basic tuple variable
func runExercise08_01() {
    var oldCoach = Coach(lastMaintenance:NSDate(timeIntervalSince1970: 0))
    
    var (active:Bool, reason:String?) = oldCoach.getAirConditioningStatus()
    if active {
        println("Cool, I will not sweat the hell out of me!")
    } else {
        println("It's gonna be a hot journey")
    }
}


// Type inference
func runExercise08_02() {
    var recentCoach = Coach(lastMaintenance: NSDate(timeIntervalSinceNow: 0))
    
    var (active, reason) = recentCoach.getAirConditioningStatus()
    if let reasonU = reason {
        println("The A/C is not working because of the following reason: \(reasonU)")
    } else {
        println("There's no apparent reason for the A/C not to work")
    }
}


// Inference
func runExercise08_03() {
    var oldCoach = Coach(lastMaintenance: NSDate(timeIntervalSince1970: 0))
    var combinedStatus = oldCoach.getAirConditioningStatus()
    
    if let reasonU = combinedStatus.1 {
        println("The A/C does not work because of \(reasonU)")
    }
}

// Positioning
func runExercise08_04() {
    var recentCoach = Coach(lastMaintenance: NSDate(timeIntervalSinceNow: 0))
    var combinedStatus = recentCoach.getAirConditioningStatus()
    
    if (combinedStatus.active) {
        println("The A/C is working!")
    }
    
    // Or
    if recentCoach.getAirConditioningStatus().active {
        println("The A/C is working, but you already know that!")
    }
}


// Dictionaries
func runExercise08_05() {
    var mySeat = 24
    var myTravelMates = [25: "JC", 26: "Pascal", 27: "Simone"]
    for (seat, name) in myTravelMates {
        if abs(seat - mySeat) == 1 {
            println("\(name) is seated next to me. Hope he doesn't smell bad!")
        }
    }
}

