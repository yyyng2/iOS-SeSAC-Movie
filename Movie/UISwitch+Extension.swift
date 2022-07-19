//
//  UISwitch.swift
//  Movie
//
//  Created by Y on 2022/07/19.
//

import Foundation
import UIKit

extension UISwitch {
    
    func designSwitch(){
        self.setOn(true, animated: true)
        self.onTintColor = UIColor.red
        self.thumbTintColor = .white
    }
    
}
