//
//  E06_Pattern.swift
//  SwiftSImpleTP
//
//  Created by Pascal Drouilly on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise06() {
    runExercise06_01()
    runExercise06_02()
}


func runExercise06_01() {
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

func runExercise06_02() {
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
    println(answer)
}


