//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes: [String : Float] = [
        "Soft": 5.0,
        "Medium": 7.0,
        "Hard": 12.0
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki")
    }
    @IBAction func eggHardness(_ sender: UIButton) {
        let title: String = sender.currentTitle!
        
        print(title)
        print(eggTimes[title]!)
        startTimer(time: eggTimes[title]!)
    }
    
    func startTimer(time: Float) {
        var timeLeft: Int = Int(time * 60)
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            timeLeft -= 1
            print(timeLeft)
            
            if timeLeft <= 0 {
                timer.invalidate()
                print("Time's Up!")
            }
        }
    }
}
