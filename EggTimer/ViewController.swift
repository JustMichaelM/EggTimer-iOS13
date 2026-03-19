//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime: Float = 5
    let mediumTime: Float = 7
    let hardTime: Float = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki")
    }
    @IBAction func eggHardness(_ sender: UIButton) {
        let title: String
        title = sender.currentTitle!
        print(title)
        
        if title == "Soft" {
            print(softTime)
        } else if title == "Medium" {
            print(mediumTime)
        } else if title == "Hard" {
            print(hardTime)
        }
    }
    
}
