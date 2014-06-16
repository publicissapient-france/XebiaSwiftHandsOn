//
//  Train.swift
//  SwiftSImpleTP
//
//  Created by Simone Civetta on 11/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import UIKit

class Train {
    var restaurantCoach:Coach?
    var coaches:Array<Coach?>
    
    var agent: Agent
    var status: Status
    
    init() {
        agent = .SNCF
        status = .OnTime
        
        coaches = Array<Coach>()
    }
    
    func createUnnamedRestaurantCoach() {
        self.restaurantCoach = Coach()
        self.coaches.append(self.restaurantCoach)
    }
    
    func createItalianRestaurantCoach() {
        self.restaurantCoach = Coach(name: "Da Luigi")
        self.coaches.append(self.restaurantCoach)
    }
    
    func createFrenchRestaurantCoach() {
        self.restaurantCoach = Coach(name: "Chez Jean-Pierre")
        self.coaches.append(self.restaurantCoach)
    }
    
    func findCoachWithName(name:String) -> Coach? {
        for c in self.coaches {
            if c?.name? == name {
                return c
            }
        }
        return nil
    }
}

extension Train {
    enum Status {
        case OnTime
        case Delayed(Int, String)
        case Canceled
    }
    
    enum Agent {
        case RATP
        case SNCF
    }
}

