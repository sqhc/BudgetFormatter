//
//  ViewController.swift
//  BudgetFormatter
//
//  Created by 沈清昊 on 3/18/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weeklyRemainingLabel: UILabel!
    @IBOutlet weak var dailyRemainingLabel: UILabel!
    @IBOutlet weak var totalBudgetTextField: UITextField!
    @IBOutlet weak var transactionBudgetTextField: UITextField!
    
    var budget: Budget?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalBudgetTextField.delegate = self
        transactionBudgetTextField.delegate = self
    }

    private func updateBudgetLabels(){
        weeklyRemainingLabel.text = budget?.weekyRemaining.Moneystring
        dailyRemainingLabel.text = budget?.dailyRemaining.Moneystring
    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let total = Decimal(string: textField.text!) else{
            return true
        }
        switch textField{
        case totalBudgetTextField:
            budget = Budget(total: total)
        case transactionBudgetTextField:
            budget?.addTransaction(amount: total, timestamp: Date())
        default:
            return true
        }
        
        updateBudgetLabels()
        return true
    }
}
