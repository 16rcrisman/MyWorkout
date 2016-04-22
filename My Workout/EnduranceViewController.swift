//
//  EnduranceViewController.swift
//  My Workout
//
//  Created by rosiecrisman on 3/9/16.
//  Copyright © 2016 rosiecrisman. All rights reserved.
//

import UIKit

class EnduranceViewController: UIViewController {
    let enduranceModel = Endurance()
    
    @IBOutlet weak var enduranceLabel: UILabel!
    
    @IBAction func generateButton(sender: UIButton) {
        let exercise = enduranceModel.generateNew()
        enduranceLabel.text = exercise
        
    }
}
