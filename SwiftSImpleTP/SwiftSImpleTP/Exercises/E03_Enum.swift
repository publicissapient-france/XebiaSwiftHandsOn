//
//  E03_Enum.swift
//  SwiftSImpleTP
//
//  Created by jc on 16/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

func runExercise03() {
    runExercise03_01()
    runExercise03_02()
}

struct TrainInfo {
    var agent: Train.Agent
    var status: Train.Status
    let identifier: String
    
    init(identifier: String, agent: Train.Agent) {
        self.identifier = identifier
        self.agent = agent
        self.status = .OnTime
    }
}

func train_info(train: TrainInfo) -> String {
    return ""
}

/**
 * This is about simple pattern matching ENUM
 * Implement train_info so that it return:
 * - when agent is RATP => <train.name>: Annulé. Merci les pannes RATP !
 * - when agent is SNCF => <train.name>: Annulé. Merci les grèves SNCF !
 */
func runExercise03_01() {
    var rerA = TrainInfo(identifier: "RER A", agent: .RATP)
    var rerB = TrainInfo(identifier: "RER B", agent: .SNCF)
    
    rerA.status = .Canceled
    rerB.status = .Canceled
    
    assert(train_info(rerA) == "RER A: Annulé. Merci les pannes RATP !")
    assert(train_info(rerB) == "RER B: Annulé. Merci les grèves SNCF !")
}

/**
* This is about advanced pattern matching ENUM
* Change train_info so that it return:
* - when delayed with < 45  => <train.name>: Retard de <train.delay>min
* - when delayed with >= 45 => <train.name>: Retard d'au moins <train.delay>min. <train.msg>
*/
func runExercise03_02() {
    var rerA = TrainInfo(identifier: "RER A", agent: .RATP)
    var rerB = TrainInfo(identifier: "RER B", agent: .SNCF)
    
    rerA.status = .Delayed(45, "Problème de signalisation")
    rerB.status = .Delayed(10, "Voyageur malade")
    
    assert(train_info(rerA) == "RER A: Retard d'au moins 45min. Problème de signalisation")
    assert(train_info(rerB) == "RER B: Retard de 10min")
}