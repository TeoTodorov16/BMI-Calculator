//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Teo on 16.01.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
    var bmi: Float = 0.0
    let height: Int?
    let weight: Int?
    
    init (height: Int?, weight: Int?) {
        self.height = height
        self.weight = weight
    }
    
    func getBMIValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
}
