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
        let title: String
        title = sender.currentTitle!
        print(title)
        
    switch title {
        case "Soft":
        print(eggTimes[title]!)
    case "Medium":
        print(eggTimes[title]!)
    case "Hard":
        print(eggTimes[title]!)
    default:
        print("No title")
        }
    }
    
}
