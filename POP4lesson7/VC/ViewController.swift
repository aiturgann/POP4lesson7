//
//  ViewController.swift
//  POP4lesson7
//
//  Created by Aiturgan Kurmanbekova on 2/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let visaButton = MakerView.shared.uiButtonMaker(title: "Visa to Visa")
    
    private let elcartButton = MakerView.shared.uiButtonMaker(title: "Elcart to Elcart")
    
    private let swiftButton = MakerView.shared.uiButtonMaker(title: "Swift to Swift")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setTarget()
    }
    
    private func setupUI() {
        view.addSubview(visaButton)
        NSLayoutConstraint.activate(
            [visaButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
             visaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
             visaButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             visaButton.heightAnchor.constraint(equalToConstant: 60)
            ])
        
        view.addSubview(elcartButton)
        NSLayoutConstraint.activate(
            [elcartButton.topAnchor.constraint(equalTo: visaButton.topAnchor, constant: 100),
             elcartButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
             elcartButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             elcartButton.heightAnchor.constraint(equalToConstant: 60)
            ])
        
        view.addSubview(swiftButton)
        NSLayoutConstraint.activate(
            [swiftButton.topAnchor.constraint(equalTo: elcartButton.topAnchor, constant: 100),
             swiftButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
             swiftButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             swiftButton.heightAnchor.constraint(equalToConstant: 60)
            ])
    }
    
    private func setTarget() {
        
        visaButton.addTarget(self, action: #selector(visaBtnTppd), for: .touchUpInside)
        elcartButton.addTarget(self, action: #selector(elcartBtnTppd), for: .touchUpInside)
        swiftButton.addTarget(self, action: #selector(swiftBtnTppd), for: .touchUpInside)
    }
    
    @objc private func visaBtnTppd() {
        let vc = VisaViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func elcartBtnTppd() {
        let vc = ElcartViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func swiftBtnTppd() {
        let vc = SwiftViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    


}

