//
//  AppDelegate.swift
//  SwiftSImpleTP
//
//  Created by Simone Civetta on 11/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        let vc = UIViewController()
        self.window!.rootViewController = vc
        
        runExercises()
        
        return true
    }
    
    func runExercises() {
        runExercise03()
        runExercise04()
        runExercise05()
        runExercise06()
        runExercise07()
    }
}

