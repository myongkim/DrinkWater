//
//  AddAlertViewController.swift
//  DrinkWater
//
//  Created by Isaac Kim on 1/17/22.
//

import UIKit

class AddAlertViewController: UIViewController {
    
    var pickdedDate: ((_ date: Date) -> Void)?
    
    @IBOutlet var datePicker: UIDatePicker!
    
    
    
    
    @IBAction func dismissButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func savedButtonTapped(_ sender: UIBarButtonItem) {
        
        pickdedDate?(datePicker.date)
        
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
