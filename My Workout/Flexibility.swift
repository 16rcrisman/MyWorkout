//
//  Flexibility.swift
//  My Workout
//
//  Created by rosiecrisman on 3/9/16.
//  Copyright © 2016 rosiecrisman. All rights reserved.
//

import Foundation

class Flexibility {
    func generateNewUpper() -> Exercise {
       let upperFlexibility = ["Shoulder and Chest", "Arm Across Chest", "Tricep Stretch"]
        let instructions = [
            "Shoulder and Chest": "1. This can be performed kneeling or standing 2. Clasp hands behind back and straighten arms 3. Raise hands as high as possible and bend forward from the waist and hold",
            "Arm Across Chest": "1. Place one arm straight across chest 2. Place hand on elbow and pull arm towards chest and hold 3. Repeat with other arm",
            "Tricep Stretch": "1. Place one hand behind back with elbow in air 2. Place other hand on elbow and gently pull towards head 3. Hold and repeat with other arm"

        ]
        let timeShort = ["10 seconds", "30 seconds", "1 minute", "1.5 minutes"]
        
        let flexibilityExerciseUpper = upperFlexibility[Int(arc4random_uniform(UInt32(upperFlexibility.count)))]
        
        let duration = timeShort[Int(arc4random_uniform(UInt32(timeShort.count)))]
        
        let title = flexibilityExerciseUpper + " for " + duration
        
        let result = Exercise(title: title, instructions: instructions[flexibilityExerciseUpper]!)
        
        return result
    }
}
