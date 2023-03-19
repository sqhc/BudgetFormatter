//
//  Budget.swift
//  BudgetFormatter
//
//  Created by 沈清昊 on 3/19/23.
//

import Foundation

class Budget{
    var weekyRemaining: Decimal {
        return _weekyRemaining
    }
    var dailyRemaining: Decimal {
        return _dailyRemaining
    }
    
    private var _weekyRemaining: Decimal
    private var _dailyRemaining: Decimal
    init(total: Decimal){
        _weekyRemaining = total
        _dailyRemaining = total/7
    }
    
    func addTransaction(amount: Decimal, timestamp: Date){
        _weekyRemaining -= amount
        _dailyRemaining -= amount
    }
}
