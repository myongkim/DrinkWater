//
//  AlertListCell.swift
//  DrinkWater
//
//  Created by Isaac Kim on 1/16/22.
//

import UIKit

class AlertListCell: UITableViewCell {
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
    }
}
