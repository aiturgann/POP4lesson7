//
//  MakerView.swift
//  POP4lesson7
//
//  Created by Aiturgan Kurmanbekova on 4/3/24.
//

import UIKit

final class MakerView {
    
    static let shared = MakerView()
    
    func uiImageMaker(image: UIImage? = nil,
                      tintColor: UIColor = .tintColor,
                      contentMode: UIView.ContentMode = .scaleToFill,
                      backGroundColor: UIColor = .clear,
                      translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = image
        imageView.tintColor = tintColor
        imageView.contentMode = contentMode
        imageView.backgroundColor = backGroundColor
        imageView.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return imageView
    }
    
    func uiLabelMaker(text: String? = nil,
                      textColor: UIColor = .black,
                      size: CGFloat = 12,
                      weight: UIFont.Weight = .regular,
                      backgroundColor: UIColor = .clear,
                      textAlignment: NSTextAlignment = .left,
                      numberOfLines: NSInteger = 0,
                      lineBreakMode: NSLineBreakMode = .byWordWrapping,
                      translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = .systemFont(ofSize: size, weight: weight)
        label.backgroundColor = backgroundColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return label
    }
    
    func uiTextFieldMaker(placeholder: String,
                          textColor: UIColor = .black,
                          backgroundColor: UIColor = .systemGray6,
                          cornerRadius: CGFloat = 6,
                          borderWidth: CGFloat = 1,
                          borderColor: CGColor = UIColor.systemGray.cgColor,
                          translatesAutoresizingMaskIntoConstraints: Bool = false,
                          leftView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8)),
                          leftViewMode: UITextField.ViewMode = .always,
                          keyboardType: UIKeyboardType = .numberPad
    ) -> UITextField {
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.textColor = textColor
        tf.backgroundColor = backgroundColor
        tf.layer.cornerRadius = cornerRadius
        tf.layer.borderWidth = borderWidth
        tf.layer.borderColor = borderColor
        tf.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        tf.leftView = leftView
        tf.leftViewMode = leftViewMode
        tf.keyboardType = keyboardType
        return tf
    }
    
    func uiButtonMaker(title: String?,
                       control: UIControl.State = .normal,
                       titleColor: UIColor = .systemBlue,
                       image: UIImage? = nil,
                       tintColor: UIColor = .tintColor,
                       backgroundColor: UIColor = .systemGray5,
                       cornerRadius: CGFloat = 12,
                       borderWidth: CGFloat = 1,
                       borderColor: CGColor = UIColor.clear.cgColor,
                       translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: control)
        button.setTitleColor(titleColor, for: control)
        button.setImage(image, for: control)
        button.tintColor = tintColor
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor
        button.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return button
    }
    
    func uiViewMaker(backgroundColor: UIColor = .systemGray6,
                     cornerRadius: CGFloat = 12,
                     translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = cornerRadius
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return view
    }
    
    func uiStackViewMaker(axis: NSLayoutConstraint.Axis,
                          distribution: UIStackView.Distribution = .fillEqually,
                          spacing: CGFloat = 10,
                          backgroundColor: UIColor = .clear,
                          cornerRadius: CGFloat = 12,
                          borderWidth: CGFloat = 0,
                          borderColor: CGColor = UIColor.clear.cgColor,
                          translatesAutoresizingMaskIntoConstraints:  Bool = false
    ) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = axis
        stackView.distribution = distribution
        stackView.spacing = spacing
        stackView.backgroundColor = backgroundColor
        stackView.layer.cornerRadius = cornerRadius
        stackView.layer.borderWidth = borderWidth
        stackView.layer.borderColor = borderColor
        stackView.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return stackView
    }
    
}

