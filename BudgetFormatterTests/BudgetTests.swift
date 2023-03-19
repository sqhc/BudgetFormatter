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
        var budget = Budget(total: 0)
        XCTAssertEqual(budget.weekyRemaining, 0)
        
        budget = Budget(total: 1)
        XCTAssertEqual(budget.weekyRemaining, 1)
        
        budget = Budget(total: 123)
        XCTAssertEqual(budget.weekyRemaining, 123)
    }
    
    func testBudgetContainsDailyRemaining(){
        
    }
    
    func testTransactionDeductsFromWeeklyRemaining(){
        
    }
    
    func testTransactionDeductsFromDailyRemaining(){
        
    }
}
