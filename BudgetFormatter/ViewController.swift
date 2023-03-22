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
    }

    //
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let total = Decimal(string: textField.text!) else{
            return true
        }
        budget = Budget(total: total)
        weeklyRemainingLabel.text = budget?.weekyRemaining.Moneystring
        return true
    }
}
