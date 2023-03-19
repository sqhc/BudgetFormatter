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
        XCTAssertEqual(Decimal(string: "0")?.Moneystring, "0.00")
        XCTAssertEqual(Decimal(string: "1")?.Moneystring, "1.00")
        XCTAssertEqual(Decimal(string: "2")?.Moneystring, "2.00")
        XCTAssertEqual(Decimal(string: "123")?.Moneystring, "123.00")
        XCTAssertEqual(Decimal(string: "-1")?.Moneystring, "-1.00")
    }
    
    func testMoneyFormatterOneDecimalNumber(){
        XCTAssertEqual(Decimal(string: "1.1")?.Moneystring, "1.10")
        XCTAssertEqual(Decimal(string: "1.2")?.Moneystring, "1.20")
        XCTAssertEqual(Decimal(string: "-1.1")?.Moneystring, "-1.10")
    }
    
    func testMoneyFormatterTwoDecimalNumbers(){
        XCTAssertEqual(Decimal(string: "1.11")?.Moneystring, "1.11")
        XCTAssertEqual(Decimal(string: "1.12")?.Moneystring, "1.12")
        XCTAssertEqual(Decimal(string: "-1.11")?.Moneystring, "-1.11")
    }
    
    func testMoneyFormatterAnyDcimalNumbers(){
        XCTAssertEqual(Decimal(string: "1.111")?.Moneystring, "1.11")
        XCTAssertEqual(Decimal(string: "1.119")?.Moneystring, "1.11")
        XCTAssertEqual(Decimal(string: "1.23456789")?.Moneystring, "1.23")
        XCTAssertEqual(Decimal(string: "-1.23456789")?.Moneystring, "-1.24")
    }
}
