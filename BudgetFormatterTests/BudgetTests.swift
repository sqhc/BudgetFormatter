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
        
    }
    
    func testTransactionDeductsFromDailyRemaining(){
        
    }
}
