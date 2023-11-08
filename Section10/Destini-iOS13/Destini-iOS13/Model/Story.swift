//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    func nextStory(choice: String?) -> Int {
        if choice == choice1 {
            return self.choice1Destination
        } else {
            return self.choice2Destination
        }
    }
    
    func showStory() -> String {
        return self.title
    }
    
    func showChoice1() -> String {
        return self.choice1
    }
    
    func showChoice2() -> String {
        return self.choice2
    }
    
    func checkStoryEnd() -> Bool {
        if choice1Destination == 0 && choice2Destination == 0 {
            return true
        } else {
            return false
        }
    }
}
