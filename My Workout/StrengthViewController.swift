//
//  StrengthViewController.swift
//  My Workout
//
//  Created by rosiecrisman on 3/10/16.
//  Copyright © 2016 rosiecrisman. All rights reserved.
//

import UIKit

class StrengthViewController: UIViewController {
    let strengthModel = Strength()

    func isSelected() {
        if self.segmentedControl.selectedSegmentIndex == 0 {
            strengthLabel.text = "Repetition or Timed Exercises?"
        }
    }
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var strengthLabel: UILabel!
    
    @IBOutlet weak var rtsegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var instructionText: UITextView!
    
    @IBAction func generateNew(sender: UIButton) {
        if self.segmentedControl.selectedSegmentIndex == 0 {
            isSelected()
            if self.rtsegmentedControl.selectedSegmentIndex == 0 {
                let exercise = strengthModel.generateNewHamReps()
                strengthLabel.text = exercise.title
                instructionText.text = exercise.instructions
            }
            else if self.rtsegmentedControl.selectedSegmentIndex == 1 {
                let exercise = strengthModel.generateNewHamTime()
                strengthLabel.text = exercise.title
                instructionText.text = exercise.instructions
                
            }
        }else if self.segmentedControl.selectedSegmentIndex == 1 {
            if self.rtsegmentedControl.selectedSegmentIndex == 0 {
                let exercise = strengthModel.generateNewAbRep()
                strengthLabel.text = exercise.title
                instructionText.text = exercise.instructions
            }
            else if self.rtsegmentedControl.selectedSegmentIndex == 1 {
                let exercise = strengthModel.generateNewAbTime()
                strengthLabel.text = exercise.title
                instructionText.text = exercise.instructions
            }
        }
    }
}


