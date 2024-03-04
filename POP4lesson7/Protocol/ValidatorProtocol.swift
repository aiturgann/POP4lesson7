//
//  ValidatorProtocol.swift
//  POP4lesson7
//
//  Created by Aiturgan Kurmanbekova on 2/3/24.
//

import Foundation
import UIKit

protocol ValidatorProtocol {
    
    func validateAmount(amount: Double, validateBtn: UIButton, balance: Double)
    
}

extension ValidatorProtocol {
    
    func validateAmount(amount: Double, validateBtn: UIButton, balance: Double) {
        if amount >= 20, amount <= balance {
            validateBtn.isEnabled = true
            validateBtn.backgroundColor = .cyan
        } else {
            validateBtn.isEnabled = false
            validateBtn.backgroundColor = .systemGray5
        }
    }
    
    
    func showSuccessTransfer(vc: UIViewController) {
        let alert = UIAlertController(title: "Succes", message: "Transfer was done succesfully", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        vc.present(alert, animated: true)
    }
    
    
    func validateNumber(count: Double, validateBtn: UIButton) {
        if count != 16 {
            validateBtn.isEnabled = false
            validateBtn.layer.borderColor = UIColor.red.cgColor
        } else {
            validateBtn.layer.borderColor = UIColor.darkGray.cgColor
        }
        
    }
}
