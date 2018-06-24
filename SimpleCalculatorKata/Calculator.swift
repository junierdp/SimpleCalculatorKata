//
//  Calculator.swift
//  SimpleCalculatorKata
//
//  Created by Junier Damian on 6/23/18.
//  Copyright © 2018 JunierOniel. All rights reserved.
//

import Foundation

class Calculator {    
    func calculate(number1: Any, number2: Any, lOperator: String) -> Any {
        
        if self.isValidNumbers(number1: number1, number2: number2) && self.isValidOperator(lOperator: lOperator) {
            let expresion = NSExpression.init(format: "\(number1)\(lOperator)\(number2)")
            if let result: Int = expresion.expressionValue(with: nil, context: nil) as? Int {
                return result
            } else {
                return "unknown value"
            }
        } else {
            return "unknown value"
        }
    }
    
    private func isValidOperator(lOperator: String) -> Bool {
        
        if lOperator == "+" || lOperator == "-" || lOperator == "/" || lOperator == "*" {
            return true
        }
        
        return false
    }
    
    private func isValidNumbers(number1: Any, number2: Any) -> Bool {
        
        guard let _: Int = number1 as? Int, let _: Int = number2 as? Int else {
            return false
        }
        
        return true
        
    }
    
    func evenOrOdd(values: [Int]) -> String {
        var result: Int = 0
        
        values.forEach({ value in
            result += value
        })
        
        if result % 2  == 0 {
            return "even"
        } else {
            return "odd"
        }
    }
}
