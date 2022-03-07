//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var audio:AVPlayer!
    let eggTime = [
        "Soft": 4,
        "Medium": 5,
        "Hard": 7
    ]
    
    @IBOutlet weak var titleLabel: UILabel!
   
    
    var secondsPassed = 0
    var totalTime = 0
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        progressBar.progress = 0.0;
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)

        
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress  = Float(secondsPassed) / Float(totalTime)
            print(progressBar.progress)
            print(Float(secondsPassed / totalTime))
        }else{
            timer.invalidate()
            titleLabel.text = "Done"
            if(titleLabel.text == "Done"){
                playSound();
            }
        }
    }
    
    func playSound() {
        // need to declare local path as url
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        // now use declared path 'url' to initialize the player
        audio = AVPlayer.init(url: url!)
        // after initialization play audio its just like click on play button
        audio.play()
    }
    
}
