//
//  ViewControllerTests.swift
//  BudgetFormatterTests
//
//  Created by 沈清昊 on 3/21/23.
//

import XCTest
@testable import BudgetFormatter

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController
        _ = viewController.view
    }
    
    func testCreateANewBudgetUpdateRemainingLabels(){
        let textField = viewController.totalBudgetTextField!
        textField.text = "100"
        _ = textField.delegate?.textFieldShouldReturn?(textField)
        
        let budget = viewController.budget
        XCTAssertEqual(viewController.weeklyRemainingLabel.text, budget?.weekyRemaining.Moneystring)
        XCTAssertEqual(viewController.dailyRemainingLabel.text, budget?.dailyRemaining.Moneystring)
    }
    
    func testCreateATransactionUpatesRemainingLabels(){
        let budget = Budget(total: 70)
        budget.addTransaction(amount: 5, timestamp: Date())
        
        let textField = viewController.totalBudgetTextField!
        textField.text = "70"
        _ = textField.delegate?.textFieldShouldReturn?(textField)
        
        let textField2 = viewController.transactionBudgetTextField!
        textField2.text = "5"
        _ = textField2.delegate?.textFieldShouldReturn?(textField2)
        
        XCTAssertEqual(viewController.weeklyRemainingLabel.text, budget.weekyRemaining.Moneystring)
        XCTAssertEqual(viewController.dailyRemainingLabel.text, budget.dailyRemaining.Moneystring)
    }
}
