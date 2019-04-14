//
//  avatarShadow.swift
//  homeWork_04
//
//  Created by k.kochemasov on 14/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

@IBDesignable class avatarShadow: UIView {
    @IBInspectable public var filled = true {
        didSet {
            setNeedsDisplay()
        }
    }
}

extension UIView {
    @IBInspectable var shadowColor: CGColor {
        set { layer.shadowColor = newValue}
        get { return layer.shadowColor ?? UIColor.black.cgColor}
    }
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue}
        get { return layer.shadowOpacity }
    }
    @IBInspectable var shadowRadius: CGFloat {
        set { layer.shadowRadius = newValue}
        get { return layer.shadowRadius}
    }
    @IBInspectable var shadowOffset: CGSize {
        set { layer.shadowOffset = newValue}
        get { return layer.shadowOffset}
    }

}
