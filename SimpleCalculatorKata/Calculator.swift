//
//  Calculator.swift
//  SimpleCalculatorKata
//
//  Created by Junier Damian on 6/23/18.
//  Copyright © 2018 JunierOniel. All rights reserved.
//

import Foundation

struct Calculator {
    func calculate(number1: Any, number2: Any, lOperator: String) -> Any {
        
        guard let _number1: Int = number1 as? Int, let _number2: Int = number2 as? Int else {
            return "unknown value"
        }
        
        switch lOperator {
        case "*":
            return _number1 * _number2
        case "+":
            return _number1 + _number2
        case "-":
            return _number1 - _number2
        case "/":
            return _number1 / _number2
        default:
            return "unknown value"
        }
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
