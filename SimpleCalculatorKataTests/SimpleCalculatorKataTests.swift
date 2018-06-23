//
//  SimpleCalculatorKataTests.swift
//  SimpleCalculatorKataTests
//
//  Created by Junier Damian on 6/23/18.
//  Copyright © 2018 JunierOniel. All rights reserved.
//

import XCTest
@testable import SimpleCalculatorKata

class TestSimpleCalculator: XCTestCase {
    var calculator: Calculator?
    override func setUp() {
        super.setUp()
        self.calculator = Calculator()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddOneMoreOne() {
        // Arrange
        let number1 = 1
        let number2 = 1
        let lOperator = "+"
        let expected = 2
        
        // Act
        let result = self.calculator?.calculate(number1: number1, number2: number2, lOperator: lOperator) as? Int
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testMultiply3By3() {
        // Arrange
        let number1 = 3
        let number2 = 3
        let lOperator = "*"
        let expected = 9
        
        // Act
        let result = self.calculator?.calculate(number1: number1, number2: number2, lOperator: lOperator) as? Int
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testSubtract3Least2() {
        // Arrange
        let number1 = 3
        let number2 = 2
        let lOperator = "-"
        let expected = 1
        
        // Act
        let result = self.calculator?.calculate(number1: number1, number2: number2, lOperator: lOperator) as? Int
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testDivide9Between3() {
        // Arrange
        let number1 = 9
        let number2 = 3
        let lOperator = "/"
        let expected = 3
        
        // Act
        let result = self.calculator?.calculate(number1: number1, number2: number2, lOperator: lOperator) as? Int
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testInvalidOperator() {
        // Arrange
        let number1 = 9
        let number2 = 3
        let lOperator = "&"
        let expected = "unknown value"
        
        // Act
        let result = self.calculator?.calculate(number1: number1, number2: number2, lOperator: lOperator) as? String
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testInvalidNumber() {
        // Arrange
        let number1 = "k"
        let number2 = 3
        let lOperator = "/"
        let expected = "unknown value"
        
        // Act
        let result = self.calculator?.calculate(number1: number1, number2: number2, lOperator: lOperator) as? String
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testEvenOrOddWithEmptyArray() {
        // Arrange
        let values: [Int] = []
        let expected: String = "even"
        
        // Act
        let result = self.calculator?.evenOrOdd(values: values)
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testEvenOrOddPassingTwoNumbers() {
        // Arrange
        let values: [Int] = [2,2]
        let expected: String = "even"
        
        // Act
        let result = self.calculator?.evenOrOdd(values: values)
        
        // Assert
        XCTAssertEqual(result, expected)
    }
    
    func testEvenOrOddPassingOddResult() {
        // Arrange
        let values: [Int] = [2,2,3]
        let expected: String = "odd"
        
        // Act
        let result = self.calculator?.evenOrOdd(values: values)
        
        // Assert
        XCTAssertEqual(result, expected)
    }
}
