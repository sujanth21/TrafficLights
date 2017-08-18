//
//  ViewController.swift
//  TrafficLights
//
//  Created by Sujanth Sebamalaithasan on 18/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trafficImage: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var startStopButton: UIButton!
    
    var startTimer = Timer()
    var scoreTimer = Timer()
    
    var timeInt = 0
    var scoreInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startGame(_ sender: Any) {
        
        if scoreInt == 0 {
            
            timeInt = 3
            trafficImage.image = UIImage(named: "trafficLight")
            startTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    }
    
    
    @objc func updateTimer() {
        
        timeInt -= 1
        
        if timeInt == 2 {
            trafficImage.image = UIImage(named: "trafficLight3")
        } else if timeInt == 1 {
            trafficImage.image = UIImage(named: "trafficLight2")
        } else if timeInt == 0 {
            trafficImage.image = UIImage(named: "trafficLight1")
            startTimer.invalidate()
        }
    }
    
}

