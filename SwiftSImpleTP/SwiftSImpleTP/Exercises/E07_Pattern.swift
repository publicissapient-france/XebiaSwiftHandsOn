//
//  E06_Pattern.swift
//  SwiftSImpleTP
//
//  Created by Pascal Drouilly on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise07() {
    runExercise07_01()
    runExercise07_02()
    runExercise07_03()
}

// Simple Pattern on Enum (with associated value)
func runExercise07_01() {
    let rerA = Train()
    rerA.agent = .RATP
    rerA.status = .Delayed(15, "Voyageur malade")

// TODO
    // switch on train status. If delayed print the delay
    switch rerA.status {
        case .OnTime:
            println("On time!")
        
        case .Delayed(let minute, _):
            println("delayed by \(minute) minutes")
        
        case .Canceled:
            println("Canceled...")
    }
}

// Where Clause
func runExercise07_02() {
    let rerA = Train()
    rerA.status = .Delayed(15, "Voyageur malade")
    
    let rerC = Train()
    rerC.status = .Delayed(2000, "Grève!")
    
    let tgv = Train()
    tgv.status = .Delayed(1, "RAS")
    
    let trains = [rerA, rerC, tgv]
    
// TODO
    // switch on all train status: delayed by 1min, less than 20, more than 20 should print distinc text on console
    let answer: String[] = trains.map {
        (train: Train) -> String in
        switch train.status {
            case .OnTime:
                return "On time!"
            
            case .Delayed(1, _):
                return "nearly on time"
            
            case .Delayed(2..20, _):
                return "almost on time"
            
            case .Delayed(let retard, _) where retard > 20:
                return "OK I'm late!"
            
            case .Canceled:
                return "Canceled..."
            
            default:
                return "RAS"
        }
    }
    println("Where Clause: \(answer)")
}

// Pattern Compose
func runExercise07_03() {
    enum VacationStatus {
        case Traveling(Train.Status)
        case Relaxing(daysLeft: Int)
    }
    
    let v1: VacationStatus = .Relaxing(daysLeft: 3)
    let v2: VacationStatus = .Traveling(.OnTime)
    let v3: VacationStatus = .Traveling(.Delayed(10, "Too much wind"))
    let v4: VacationStatus = .Traveling(.Delayed(1000, "unknown"))
    
    let vacs = [v1, v2, v3, v4]
    
// TODO
    // switch on vacation status *and* train status. Separate small (<60min) and large(>=60min) delay
    let answer: String[] = vacs.map {
        (status: VacationStatus) -> String in
        switch status {
            case .Relaxing(_):
                return "cool time"
            
            case .Traveling(.OnTime):
                return "Je vais être à l'heure"
            
            case .Traveling(.Delayed(let retard, _)) where retard < 60:
                return "Je serais en retard"
            
            case .Traveling(.Delayed(let retard, _)) where retard >= 60:
                return "vraiment en retard"
            
            case .Traveling(.Canceled):
                return "OMG!"
            
            default:
                return ""
        }
    }
    println("Pattern Compose: \(answer)")
}

