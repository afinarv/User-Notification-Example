//
//  ContentView.swift
//  UserNotificationExample
//
//  Created by Afina R. Vinci on 19/05/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("Permission granted!")
                    } else {
                        print(error?.localizedDescription ?? "error")
                    }
                }
            }
            Button("Schedule Notification") {
                // Set the content of the notification
                let content = UNMutableNotificationContent()
                content.title = "Sholat"
                content.subtitle = "Sudah waktunya sholat"
                content.sound = UNNotificationSound.default
                
                // Set trigger for notification. Line below is using time interval trigger. There are various types of UNNotificationTrigger, look up the documentation!
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
                
                // Lines below is example when using calendar trigger.
                var dateComponents = DateComponents()
                dateComponents.hour = 18
                dateComponents.minute = 10
                let triggerCalendar = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                
                // Compose the request. Pass the UNNotificationTrigger you want to use to 'trigger' parameter. It can also set to nil so that notification will fire immediately.
                let request = UNNotificationRequest(identifier: "sholatNotif", content: content, trigger: nil)
                
                UNUserNotificationCenter.current().add(request)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
