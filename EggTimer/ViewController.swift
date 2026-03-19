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
    
    let eggTimes: [String : Float] = [
        "Soft": 0.1,
        "Medium": 7.0,
        "Hard": 12.0
    ]
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        var timeLeft: Int = Int(time * 60)
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
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
