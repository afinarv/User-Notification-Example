//
//  AppDelegate.swift
//  UserNotificationExample
//
//  Created by Afina R. Vinci on 29/10/24.
//

import SwiftUI
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Set UNUserNotificationCenter delegate
        UNUserNotificationCenter.current().delegate = self
        return true
    }
    
    // Show notification as a banner even when the app is in the foreground
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        // Present notification as banner and in notification list
        completionHandler([.banner, .list])
    }
}
