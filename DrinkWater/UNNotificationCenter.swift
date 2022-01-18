//
//  UNNotificationCenter.swift
//  DrinkWater
//
//  Created by Isaac Kim on 1/17/22.
//

import Foundation
import UserNotifications


extension UNUserNotificationCenter {
    func addNotificationRequest(by alert: Alert) {
        let content = UNMutableNotificationContent()
        content.title = "Time to drink Water"
        content.body = "World Health Oraganization (WHO) is recommending water is 1.5L to 2L per day."
        content.sound = .default
        content.badge = 1
        
        let component = Calendar.current.dateComponents([.hour, .minute], from: alert.date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: component, repeats: alert.isOn)
        
        let request = UNNotificationRequest(identifier: alert.id, content: content, trigger: trigger)
        
        self.add(request, withCompletionHandler: nil)
        
        
    }
}
