//
//  MoneyFormatter.swift
//  BudgetFormatter
//
//  Created by 沈清昊 on 3/18/23.
//

import Foundation

struct MoneyFormatter{
    func string(decimal: Decimal)-> String{
        let numberFormatter = NumberFormatter()
        return "\(numberFormatter.string(from: decimal as NSDecimalNumber) ?? "").00"
    }
}
