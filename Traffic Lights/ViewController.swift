//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Tim Yusupov on 2/21/22.
//

import UIKit

enum Light {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    var currentLight = Light.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
        startButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = redLight.bounds.height/2
        yellowLight.layer.cornerRadius = yellowLight.bounds.height/2
        greenLight.layer.cornerRadius = greenLight.bounds.height/2
        // Do any additional setup after loading the view.
    }

    @IBAction func StartTrafficLights() {
        if startButton.titleLabel?.text == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        switch currentLight {
        case .red:
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
            currentLight = .green
        case .green:
            redLight.alpha = 1
            greenLight.alpha = 0.5
            currentLight = .red
        }
    }
    
}

