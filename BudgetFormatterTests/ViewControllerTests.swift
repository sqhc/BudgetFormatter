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
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        _ = viewController.view
    }
    
    func testCreateANewBudgetUpdateRemainingLabels(){
        
    }
    
    func testCreateATransactionUpatesRemainingLabels(){
        
    }
}
