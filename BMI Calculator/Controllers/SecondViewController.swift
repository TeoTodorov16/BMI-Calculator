//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Teo on 14.01.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
    }
    // First Commit for 15/01/2024
    
}
