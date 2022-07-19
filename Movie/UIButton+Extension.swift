//
//  UIButton+Extension.swift
//  Movie
//
//  Created by Y on 2022/07/19.
//

import Foundation
import UIKit

extension UIButton{
    
    func designSignButton(){
        self.setTitle("회원가입", for: .normal)
        self.setTitleColor(UIColor.black, for: .normal)
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 8
    }
    
}
