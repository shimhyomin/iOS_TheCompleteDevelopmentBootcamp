//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimesDic = ["Soft": 5, "Medium": 7, "Hard": 12]
    var eggTime = 0
    var timer : Timer?
    var counter = 0
    
    @IBAction func killTimer(_ sender: AnyObject) {
        self.counter = 0
        timer?.invalidate()
        timer = nil
    }
    
    @objc func prozessTimer() {
        if counter >= eggTime {
            killTimer(self)
            titleLabel.text = "Done!"
        }
        else {
            counter += 1
            print("This is a second ", counter)
            updateProgressBar()
        }
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let egghardness = sender.currentTitle!
        eggTime = eggTimesDic[egghardness]!
        
        titleLabel.text = "Start"
        
        if timer != nil {
            killTimer(timer!)
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(prozessTimer), userInfo: nil, repeats: true)
        
    }
    
    func updateProgressBar() {
        
        progressBar.progress = Float(counter) / Float(eggTime)
        
    }
    
    
}
