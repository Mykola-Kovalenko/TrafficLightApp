//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Николай Коваленко on 27.11.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 45
        yellowLight.layer.cornerRadius = 45
        greenLight.layer.cornerRadius = 45
    }


}

