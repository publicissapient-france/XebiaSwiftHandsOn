//
//  E03_Tuples.swift
//  SwiftSImpleTP
//
//  Created by Simone Civetta on 17/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

var answer:String = ""

func runExercise04() {
//    runExercise04_00()
    runExercise04_01()
    runExercise04_02()
    runExercise04_03()
    runExercise04_04()
}


func runExercise04_00() {
    // Air conditioning status:
    // We would like to know if a coach has or not an air conditioning system
    // and, if not, we would like to know the reason
    
    // In objective-c, you could create a struct or a class wrapping the two pieces of info
    // ... but in Swift?
    
    let coach = Coach()
    coach.getAirConditioningStatus()
}


// Named tuple variable
func runExercise04_01() {
    let recentCoach = getRecentCoach()
    
    // @TODO: get the air conditioning status (recentCoach.getAirConditioningStatus()
    // and if it is not active, set 'answer' to "AIR CONDITIONING ON"
    var (active, reason) = recentCoach.getAirConditioningStatus()
    if (active) {
        answer = "AIR CONDITIONING ON"
    }
    
    // Validation
    validateE0401(answer)
}


// Type inference and inline unwrapping
func runExercise04_02() {
    let oldCoach = getOldCoach()
    
    // @TODO: get the air conditioning status (oldCoach.getAirConditioningStatus()
    // and unwrap the value.
    // Then set 'answer' to "AIR CONDITIONING OFF: <Fault reason>", ex "AIR CONDITIONING OFF: Temperature fault"
    // Try to write 4 lines of code or less ;)
    
    var (active, reason) = oldCoach.getAirConditioningStatus()
    if let reasonU = reason {
        answer = "AIR CONDITIONING OFF: \(reasonU)"
    }
    
    // Validation
    validateE0402(answer)    
}


// Positioning
func runExercise04_03() {
    let recentCoach = getRecentCoach()

    // @TODO: similarly to the previous exercise:
    // get the air conditioning status (recentCoach.getAirConditioningStatus()
    // and unwrap the value.
    // Then set 'answer' to "AIR CONDITIONING OFF: <Fault reason>", ex "AIR CONDITIONING OFF: Temperature fault"
    // Try to write 3 lines of code or less ;)
    
    // Or
    if recentCoach.getAirConditioningStatus().active {
        answer = "AIR CONDITIONING ON"
    }
    
    // Validation
    validateE0403(answer)
}


// Dictionaries
func runExercise04_04() {
    let mySeat = 24
    let myTravelMates = [25: "Jean", 26: "Nicolas", 27: "François"] // Seat: Name
    
    // @TODO: Use tuples to retrieve the name of the passenger who sits
    // next to my seat
    
    for (seat, name) in myTravelMates {
        if abs(seat - mySeat) == 1 {
            answer = "\(name) is next to me"
        }
    }
    
    // Validation
    validateE0404(answer)
}

