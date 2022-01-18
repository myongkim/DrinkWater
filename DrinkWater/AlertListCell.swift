//
//  AlertListCell.swift
//  DrinkWater
//
//  Created by Isaac Kim on 1/16/22.
//

import UIKit
import UserNotifications

class AlertListCell: UITableViewCell {
    
    let userNotificationCenter = UNUserNotificationCenter.current()
    
    @IBOutlet var meridiemLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var alertSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    
    @IBAction func alertSwtichValueChange(_ sender: UISwitch) {
        guard let data = UserDefaults.standard.value(forKey: "alerts") as? Data,
              var alerts = try? PropertyListDecoder().decode([Alert].self, from: data) else { return }
        
        alerts[sender.tag].isOn = sender.isOn
        UserDefaults.standard.set(try? PropertyListEncoder().encode(alerts), forKey: "alerts")
        
        if sender.isOn {
            userNotificationCenter.addNotificationRequest(by: alerts[sender.tag])
        } else {
            userNotificationCenter.removePendingNotificationRequests(withIdentifiers: [alerts[sender.tag].id])
        }
        
              
        
    }
}
