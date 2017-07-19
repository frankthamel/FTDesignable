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
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        if enableImageRightAligned , let imageView = imageView {
            imageEdgeInsets.left = self.bounds.width - imageView.bounds.width - imageRightPadding
        }
        
        if enableGradientBackground {
            let gradientLayer = CAGradientLayer()
            gradientLayer.bounds = self.bounds
            gradientLayer.colors = [gradientColor1.cgColor , gradientColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
    
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
    
    // title insets
    @IBInspectable public var titleLeftPadding : CGFloat = 0.0 {
        didSet{
            titleEdgeInsets.left = titleLeftPadding
        }
    }
    
    @IBInspectable public var titleRightPadding : CGFloat = 0.0 {
        didSet{
            titleEdgeInsets.right = titleRightPadding
        }
    }
    
    @IBInspectable public var titleTopPadding : CGFloat = 0.0 {
        didSet{
            titleEdgeInsets.top = titleTopPadding
        }
    }
    
    @IBInspectable public var titleBottomPadding : CGFloat = 0.0 {
        didSet{
            titleEdgeInsets.bottom = titleBottomPadding
        }
    }
    
    // image insets
    @IBInspectable public var imageLeftPadding : CGFloat = 0.0 {
        didSet{
            imageEdgeInsets.left = imageLeftPadding
        }
    }
    
    @IBInspectable public var imageRightPadding : CGFloat = 0.0 {
        didSet{
            imageEdgeInsets.right = imageRightPadding
        }
    }
    
    @IBInspectable public var imageTopPadding : CGFloat = 0.0 {
        didSet{
            imageEdgeInsets.top = imageTopPadding
        }
    }
    
    @IBInspectable public var imageBottomPadding : CGFloat = 0.0 {
        didSet{
            imageEdgeInsets.bottom = imageBottomPadding
        }
    }
    
    @IBInspectable public var enableImageRightAligned : Bool = false
    
    // add gradient to button
    @IBInspectable public var enableGradientBackground : Bool = false
    
    @IBInspectable var gradientColor1 : UIColor = UIColor.black
    
    @IBInspectable var gradientColor2 : UIColor = UIColor.white
    
    
    
}
