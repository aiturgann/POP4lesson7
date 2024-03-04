//
//  VisaViewController.swift
//  POP4lesson7
//
//  Created by Aiturgan Kurmanbekova on 2/3/24.
//

import UIKit

class VisaViewController: UIViewController, ValidatorProtocol {
    
    
    
    private let stackView = MakerView().uiStackViewMaker(axis: .vertical)
    
    private let userCardNumberLabel = MakerView().uiLabelMaker(text: "1150 8262 7133 5264")
    
    private let balanceLabel = MakerView().uiLabelMaker(text: "2200",
                                                        size: 24,
                                                        weight: .bold)
    
    private let recipientsCardNumberTF = MakerView().uiTextFieldMaker(placeholder: "Recipient's Card Number")
    
    private let amountTF = MakerView().uiTextFieldMaker(placeholder: "Enter an Amount")
    
    private let checkButton = MakerView().uiButtonMaker(title: "Check Amount",
                                                        titleColor: .white)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setTarget()
    }
    
    private func setupUI() {
        view.addSubview(stackView)
        NSLayoutConstraint.activate(
            [stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
             stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             stackView.heightAnchor.constraint(equalToConstant: 70)
            ])
        
        stackView.addArrangedSubview(userCardNumberLabel)
        stackView.addArrangedSubview(balanceLabel)
        
        
        view.addSubview(recipientsCardNumberTF)
        NSLayoutConstraint.activate(
            [recipientsCardNumberTF.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 100),
             recipientsCardNumberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             recipientsCardNumberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             recipientsCardNumberTF.heightAnchor.constraint(equalToConstant: 60)
            ])
        
        view.addSubview(amountTF)
        NSLayoutConstraint.activate(
            [amountTF.topAnchor.constraint(equalTo: recipientsCardNumberTF.bottomAnchor, constant: 100),
             amountTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             amountTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             amountTF.heightAnchor.constraint(equalToConstant: 60)
            ])
        
        view.addSubview(checkButton)
        NSLayoutConstraint.activate(
            [checkButton.topAnchor.constraint(equalTo: amountTF.bottomAnchor, constant: 100),
             checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             checkButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             checkButton.heightAnchor.constraint(equalToConstant: 60)
            ])
    }
    
    private func setTarget() {
        recipientsCardNumberTF.addTarget(self, action: #selector(validateNumber), for: .editingChanged)
    }
    
    @objc private func validateNumber(_ sender: Any) {
        guard let number = recipientsCardNumberTF.text?.count else { return }
        validateNumber(count: Double(number), validateBtn: checkButton)

        amountTF.addTarget(self, action: #selector(validateTFAmount), for: .editingChanged)
    }
    
    @objc private func validateTFAmount(_ sender: Any) {
        guard let amount = amountTF.text, let balance = balanceLabel.text else { return }
        validateAmount(amount: Double(amount) ?? 0, validateBtn: checkButton, balance: Double(balance) ?? 0)
        
        checkButton.addTarget(self, action: #selector(successTransfer), for: .touchUpInside)
    }
    
    @objc private func successTransfer(_ sender: Any) {
        showSuccessTransfer(vc: self)
    }

}
