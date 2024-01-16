//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Teo on 16.01.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getColor () -> UIColor {
        let bmiColor = bmi?.color ?? .blue
        return bmiColor
    }
    
    func getAdvice () -> String {
        let bmiAdvice = bmi?.advice ?? "That's craazy"
        return bmiAdvice
    }
    
    func getBMIValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pie!", color: .red)
        }
    }
}
