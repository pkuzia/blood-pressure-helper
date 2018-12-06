//
//  StyleKit.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 05/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework
import SwifterSwift

enum Colors {
    
    /* Common */
    case baseOrange
    case baseOrangeDark
    
    /* Navigation Bar */
    case navigationBarTintColor
}

enum Gradients {
    
    /* Navigation Bar */
    case baseGradientColor
}

enum LabelStyle {
    
    /* Common */
    case pillButtonTitle
}

class StyleKit {
    
    // MARK: - Properties
 
    static func color(for color: Colors) -> UIColor {
        switch color {
        case .baseOrange:
            return UIColor.flatOrange
        case .baseOrangeDark:
            return UIColor.flatRed
        case .navigationBarTintColor:
            return UIColor.white
        }
    }
    
    static func gradientColor(for gradient: Gradients, with frame: CGRect) -> UIColor {
        switch gradient {
        case .baseGradientColor:
            return UIColor(gradientStyle: .leftToRight, withFrame: frame, andColors: [color(for: .baseOrange), color(for: .baseOrangeDark)])
        }
    }
    
    static func attributedString(text: String, style: LabelStyle) -> NSAttributedString {
        var attributedDictionary = [NSAttributedString.Key: AnyObject]()
        switch style {
        case .pillButtonTitle:
            attributedDictionary = attributedText(color: UIColor.white, font: UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.medium))
        }
        return NSAttributedString(string: text, attributes: attributedDictionary)
    }
    
    static func navBarAttributes() -> [NSAttributedString.Key: Any] {
        return attributedText(color: UIColor.white, font: UIFont.systemFont(ofSize: 21, weight: UIFont.Weight.medium))
    }
    
    static func attributedText(color: UIColor, font: UIFont, alignment: NSTextAlignment = .left, underline: Bool = false) -> [NSAttributedString.Key: AnyObject] {
        var attributedText = [NSAttributedString.Key: AnyObject]()
        attributedText[.foregroundColor] = color
        attributedText[.font] = font
        if underline {
            attributedText[.underlineStyle] = NSUnderlineStyle.single.rawValue as AnyObject
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 3.5
        paragraphStyle.alignment = alignment
        
        attributedText[.paragraphStyle] = paragraphStyle
        
        return attributedText
    }
}
