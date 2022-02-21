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
    
    private var currentLight = Light.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        startButton.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        let radius = redLight.bounds.height/2
        redLight.layer.cornerRadius = radius
        yellowLight.layer.cornerRadius = radius
        greenLight.layer.cornerRadius = radius
    }

    @IBAction func StartTrafficLights() {
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
    }
    
}

