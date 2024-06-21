//
//  Study_Buddy_2_0App.swift
//  Study Buddy 2.0
//
//  Created by Journey Galore on 6/17/24.
//

import SwiftUI

@main
struct Study_Buddy_2_0App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserSettings())
        }
    }
}
