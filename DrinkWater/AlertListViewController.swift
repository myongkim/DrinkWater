//
//  AlertListViewController.swift
//  DrinkWater
//
//  Created by Isaac Kim on 1/16/22.
//

import UIKit

let alertListCell = "AlertListCell"

class AlertViewController: UITableViewController {
    
    var alertList: [Alert] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nibName = UINib(nibName: alertListCell, bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: alertListCell)
        
//        register(nibName, forCellWithReuseIdentifier: "AlertListCell")
//
    }
    
    
    
    
    @IBAction func addAlertButtonAction(_ sender: UIBarButtonItem) {
    }
    
}

extension AlertViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alertList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Time to drink water"
        default:
            return nil
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AlertListCell", for: indexPath) as? AlertListCell else { return UITableViewCell()}
        
        cell.alertSwitch.isOn = alertList[indexPath.row].isOn
        cell.timeLabel.text = alertList[indexPath.row].time
        cell.meridiemLabel.text = alertList[indexPath.row].meridiem
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
