//
//  Validations.swift
//  SwiftSimpleTP
//
//  Created by Simone Civetta on 19/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func getRecentCoach() -> Coach {
    return Coach(lastMaintenance:NSDate(timeIntervalSinceNow: 0))
}

func getOldCoach() -> Coach {
    return Coach(lastMaintenance:NSDate(timeIntervalSince1970: 0))
}

func getFrenchRestaurantTrain() -> Train {
    var myTrain:Train = Train()
    myTrain.createFrenchRestaurantCoach()
    return myTrain
}

// Don't peek too much in here ;)

func validateE0401(solution: String) {
    assert(answer == "AIR CONDITIONING ON")
}

func validateE0402(solution: String) {
    assert(solution == "AIR CONDITIONING OFF: Electric fault")
}

func validateE0403(solution: String) {
    assert(solution == "AIR CONDITIONING ON")
}

func validateE0404(solution: String) {
    assert(solution == "Jean is next to me")
}

// Ex 05

func validateE5401(solution: String) {
    assert(answer == "Hello, Swift")
}

func validateE5402(solution: String) {
    assert(answer == "NO NAME")
}

func validateE5403(solution: String) {
    assert(answer == "Da Luigi")
}

func validateE5404(solution: String) {
    assert(answer == "50")
}

