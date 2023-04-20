import Foundation
import UIKit


struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = (weight) / pow(height, 2)
        let advice: String
        
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        }else if (bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a normal pie", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
        
    }
    
    
    func getBMIValue() -> String{
        // use nil coalescing operator to return bmi value if it has a value, else return 0.0
        let bmiToDecimal =  String(format: "%0.1f", bmi?.value ??  0.0)
        return bmiToDecimal
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
}


 
