//
//  Button.swift
//  Ramyam
//
//  Created by Venkata SPR Bathula on 1/10/19.
//  Copyright © 2019 Prasad. All rights reserved.
//

import UIKit

@IBDesignable class Button: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
    
}
