//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by shm on 2023/09/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let q: String
    let a: String
    
    func checkAnswer(userAnswer: String?) -> Bool {
        if a == userAnswer {
            return true
        }
        else { return false }
    }
}
