//
//  MoneyFormatter.swift
//  BudgetFormatterTests
//
//  Created by 沈清昊 on 3/18/23.
//

import XCTest
@testable import BudgetFormatter

class MoneyFormatterTests: XCTestCase {
    let formatter = MoneyFormatter()

    func testMoneyFormatterWholeNumber(){
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "0")!), "0.00")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "1")!), "1.00")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "2")!), "2.00")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "123")!), "123.00")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "-1")!), "-1.00")
    }
    
    func testMoneyFormatterOneDecimalNumber(){
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "1.1")!), "1.10")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "1.2")!), "1.20")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "-1.1")!), "-1.10")
    }
    
    func testMoneyFormatterTwoDecimalNumbers(){
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "1.11")!), "1.11")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "1.12")!), "1.12")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "-1.11")!), "-1.11")
    }
    
    func testMoneyFormatterAnyDcimalNumbers(){
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "1.111")!), "1.11")
        XCTAssertEqual(formatter.string(decimal: Decimal(string: "1.119")!), "1.11")
    }
}
