//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!

    var quiz = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
//        if sender.currentTitle == question[questionNumber].a {
//            print("correct")
//            sender.backgroundColor = .green
//        } else {
//            print("wrong")
//            sender.backgroundColor = .red
//        }
        
//        if question[questionNumber].checkAnswer(userAnswer: sender.currentTitle) {
//            print("Correct")
//            sender.backgroundColor = .green
//        } else {
//            print("Wrong")
//            sender.backgroundColor = .red
//        }
        if quiz.checkAnswer(sender.currentTitle!) {
            print("Correct")
            sender.backgroundColor = .green
        } else {
            print("Wrong")
            sender.backgroundColor = .red
        }
        
        Timer.scheduledTimer(timeInterval:0.2, target:self, selector:#selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
//        questionNumber += 1
//        questionNumber %= question.count
//        questionLabel.text = question[questionNumber].q
        questionLabel.text = quiz.getQuestionText()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
//        progressBar.progress = Float(questionNumber+1) / Float(question.count)
        progressBar.progress = quiz.getProgress()
        quiz.nextQuestion()
    }
    
}

