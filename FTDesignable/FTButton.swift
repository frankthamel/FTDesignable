//
//  FTButton.swift
//  FTDesignable
//
//  Created by Frank Thamel on 7/19/17.
//  Copyright © 2017 co.talene. All rights reserved.
//

import UIKit

@IBDesignable
public class FTButton: UIButton {
    
    @IBInspectable public var cornerRadius : CGFloat = 10.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable public var borderWidth : CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var borderColor : UIColor = .white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
}
