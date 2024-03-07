//
//  ValidatorProtocol.swift
//  POP4lesson7
//
//  Created by Aiturgan Kurmanbekova on 2/3/24.
//

import Foundation
import UIKit

protocol ValidatorProtocol {
    
    func validateTF(number: UITextField, amount: UITextField, balanceL: UILabel, button: UIButton)
            
}

extension ValidatorProtocol {
    
    func isCorrectNumber(count: Int) -> Bool {
        if count == 16 {
            return true
        }
    
        return false
    }
    
    func isCorrectAmount(amount: Double, balance: Double) -> Bool {
        if amount >= 20, amount <= balance {
            return true
        }
        
        return false
    }
    
    
    func validateTF(number: UITextField, amount: UITextField, balanceL: UILabel, button: UIButton) {
        guard let amount = amount.text, let balance = balanceL.text, let number = number.text?.count else { return }
        
        if isCorrectNumber(count: number), isCorrectAmount(amount: Double(amount) ?? 0, balance: Double(balance) ?? 0) {
            button.isEnabled = true
            button.layer.borderColor = UIColor.darkGray.cgColor
            button.backgroundColor = .systemBlue
        } else {
            button.isEnabled = false
            button.layer.borderColor = UIColor.red.cgColor
            button.backgroundColor = .systemGray5
        }
    }
    
    
    func showSuccessTransfer(vc: UIViewController) {
        let alert = UIAlertController(title: "Succes", message: "Transfer was done succesfully", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        vc.present(alert, animated: true)
    }
    
    
    
}
