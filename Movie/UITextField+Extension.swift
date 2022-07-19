//
//  UITextField+Extension.swift
//  Movie
//
//  Created by Y on 2022/07/19.
//

import UIKit

extension UITextField{

    func designTextField(textFieldPlaceholder: String, textFieldKeyboardType: UIKeyboardType, textFieldSecure: Bool){
        self.attributedPlaceholder = NSAttributedString(string: textFieldPlaceholder, attributes: [.foregroundColor: UIColor.white])
        self.keyboardType = textFieldKeyboardType
        self.backgroundColor = .darkGray
        self.layer.cornerRadius = 8
        self.textAlignment = .center
        self.borderStyle = .roundedRect
        self.isSecureTextEntry = textFieldSecure
    }
}
