//
//  BudgetTests.swift
//  BudgetFormatterTests
//
//  Created by 沈清昊 on 3/19/23.
//

import XCTest
@testable import BudgetFormatter

class BudgetTests: XCTestCase {

    func testBudgetContainsWeeklyRemaining(){
        let amounts: [Decimal] = [0, 1, 2, 123]
        amounts.forEach{ amount in
            let budget = Budget(total: amount)
            XCTAssertEqual(budget.weekyRemaining, amount)
        }
    }
    
    func testBudgetContainsDailyRemaining(){
        let amounts: [Decimal] = [0, 7, 14, 70]
        amounts.forEach{ amount in
            let budget = Budget(total: amount)
            XCTAssertEqual(budget.dailyRemaining, amount/7, "daily remaining is not equals to \(amount)/7")
        }
    }
    
    func testTransactionDeductsFromWeeklyRemaining(){
        let budget = Budget(total: 10)
        budget.addTransaction(amount: 0, timestamp: Date())
        XCTAssertEqual(budget.weekyRemaining, 10)
        
        budget.addTransaction(amount: 1, timestamp: Date())
        XCTAssertEqual(budget.weekyRemaining, 9)
        
        budget.addTransaction(amount: 2, timestamp: Date())
        XCTAssertEqual(budget.weekyRemaining, 7)
    }
    
    func testTransactionDeductsFromDailyRemaining(){
        let budget = Budget(total: 70)
        budget.addTransaction(amount: 0, timestamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 10)
        
        budget.addTransaction(amount: 1, timestamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 9)
    }
}
