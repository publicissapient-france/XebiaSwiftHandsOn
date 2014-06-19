//
//  Coach.swift
//  SwiftSImpleTP
//
//  Created by Simone Civetta on 11/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import UIKit

class Coach {
    
    var lastMaintenanceForOldCoach = NSDate(timeIntervalSinceNow: -3600 * 24 * 30); // One month ago
    
    var name:String?
    var lastMaintenance:NSDate?
    
    init() {
        
    }
    
    init(name:String) {
        self.name = name
    }
    
    init(lastMaintenance:NSDate!) {
        self.lastMaintenance = lastMaintenance
    }
    
    func getAirConditioningStatus() -> (active:Bool, reason:String?) {
        if let lastMaintenanceU = self.lastMaintenance {
            if lastMaintenanceU.compare(self.lastMaintenanceForOldCoach) == NSComparisonResult.OrderedDescending {
                return (true, nil)
            }
        }
        return (false, "Electric fault")
    }
}
