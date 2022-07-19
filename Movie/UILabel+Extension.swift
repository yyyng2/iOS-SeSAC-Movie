//
//  UILabel+Extension.swift
//  Movie
//
//  Created by Y on 2022/07/19.
//

import Foundation
import UIKit

extension UILabel {
    
    func designNewflixLabel(){
        self.text = "NEWFLIX"
        self.textColor = .red
        self.textAlignment = .center
        self.frame.size = self.intrinsicContentSize
    }
    
}
