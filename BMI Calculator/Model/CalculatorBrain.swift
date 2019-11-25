//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kevin Smith on 11/20/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var advice: String?

    func getBMIString() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (pow(height, 2))
        print("Bmi val: \(bmiValue)")
        //let result = { // no good
            if bmiValue < 18.5 {
                print("underweight")
                self.bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
                print("normal")
                self.bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
            } else {
               print("Overweight")
                self.bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
            }
        //}
        print("adviiiice: \(bmi?.advice)")
        
        
        

        print(bmi)
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black

    }

    

}
