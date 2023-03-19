//
//  Budget.swift
//  BudgetFormatter
//
//  Created by 沈清昊 on 3/19/23.
//

import Foundation

class Budget{
    var weekyRemaining: Decimal = 0
    var dailyRemaining: Decimal = 0
    init(total: Decimal){
        weekyRemaining = total
        dailyRemaining = total/7
    }
    
    func addTransaction(amount: Decimal, timestamp: Date){
        weekyRemaining -= amount
    }
}
