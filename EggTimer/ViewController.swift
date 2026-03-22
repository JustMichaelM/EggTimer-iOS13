//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes: [String : Float] = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        print("Lubie Placki")
    }
    @IBAction func eggHardness(_ sender: UIButton) {
        let title: String = sender.currentTitle!
        timer.invalidate()
        print(title)
        print(eggTimes[title]!)
        startTimer(time: eggTimes[title]!)
    }
    
    func startTimer(time: Float) {
        let totalTime: Float = Float(time * 60)
        var timeLeft: Float = Float(time * 60)
        progressBar.progress = 0.0
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.progressBar.progress += 1/totalTime
            timeLeft -= 1

            
            print(timeLeft)
            
            if timeLeft <= 0 {
                timer.invalidate()
                print("Time's Up!")
                self.label.text = "Time's Up!"
            }
        }
    }
}
