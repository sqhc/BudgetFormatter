//
//  MoneyFormatter.swift
//  BudgetFormatterTests
//
//  Created by 沈清昊 on 3/18/23.
//

import XCTest
@testable import BudgetFormatter

class MoneyFormatterTests: XCTestCase {

    func testMoneyFormatterWholeNumber(){
        let formatter = MoneyFormatter()
        XCTAssertEqual(formatter.string(decimal: 0), "0.00")
        XCTAssertEqual(formatter.string(decimal: 1), "1.00")
        XCTAssertEqual(formatter.string(decimal: 2), "2.00")
        XCTAssertEqual(formatter.string(decimal: 123), "123.00")
        XCTAssertEqual(formatter.string(decimal: -1), "-1.00")
    }
    
    func testMoneyFormatterOneDecimalNumber(){
        let formatter = MoneyFormatter()
        XCTAssertEqual(formatter.string(decimal: 1.1), "1.10")
        XCTAssertEqual(formatter.string(decimal: 1.2), "1.20")
        XCTAssertEqual(formatter.string(decimal: -1.1), "-1.10")
    }
    
    func testMoneyFormatterTwoDecimalNumbers(){
        let formatter = MoneyFormatter()
        XCTAssertEqual(formatter.string(decimal: 1.11), "1.11")
        XCTAssertEqual(formatter.string(decimal: 1.12), "1.12")
        XCTAssertEqual(formatter.string(decimal: -1.11), "-1.11")
    }
}
