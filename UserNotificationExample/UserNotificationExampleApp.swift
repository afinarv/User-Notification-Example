//
//  UserNotificationExampleApp.swift
//  UserNotificationExample
//
//  Created by Afina R. Vinci on 19/05/24.
//

import SwiftUI

@main
struct UserNotificationExampleApp: App {
    // Register the AppDelegate
       @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
