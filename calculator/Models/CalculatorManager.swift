//
//  File.swift
//  calculator
//
//  Created by 김강현 on 2023/04/06.
//

import Foundation



struct CalculatorManager {
    
    var result: Double?
    
    mutating func calculate(buttonTitle:String, first:String, second:String) {
        guard let firstNum = Double(first),
              let secondNum = Double(second) else {return}
        
        switch buttonTitle {
        case "+":
            result = firstNum + secondNum
        case "-":
            result = firstNum - secondNum
        case "X":
            result = firstNum * secondNum
        case "%":
            result = firstNum / secondNum
        default:
            break
        }
    }
    
    func getResult() -> Double {
        return result ?? 0.0
    }
}
