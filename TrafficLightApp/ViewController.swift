//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Николай Коваленко on 27.11.2022.
//

import UIKit


class ViewController: UIViewController {
    enum CurrentLiht {
        case red, yellow, green
    }
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    private var currentLight = CurrentLiht.red
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 45
        yellowLight.layer.cornerRadius = 45
        greenLight.layer.cornerRadius = 45
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    
    @IBAction func startButttonDidTaped(_ sender: Any?) {
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = 1.0
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            currentLight = CurrentLiht.yellow
        case .yellow:
            yellowLight.alpha = 1.0
            redLight.alpha = 0.3
            greenLight.alpha = 0.3
            currentLight = CurrentLiht.green
        default:
            yellowLight.alpha = 0.3
            redLight.alpha = 0.3
            greenLight.alpha = 1.0
            currentLight = CurrentLiht.red
        }
        
    }
}


