//
//  PillButton.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit
import Spring
import SwifterSwift

class PillButton: SpringButton {
    
    // MARK: Variables
    
    private var selectedForce: CGFloat = 0.3
    private var selectedDuration: CGFloat = 0.7
    private var selectedDelay: CGFloat = 0
    private var selectedDamping: CGFloat = 0.7
    private var selectedVelocity: CGFloat = 0.7
    private var selectedAnimtion: String = "pop"
    private var selectedCurve: String = "easeOut"
    
    // MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initUI()
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        backgroundColor = StyleKit.gradientColor(for: .baseGradientColor, with: bounds)
    }
    
    public func setupButton(title: String) {
        setAttributedTitle(StyleKit.attributedString(text: title, style: .pillButtonTitle), for: .normal)
    }
    
    // MARK: Methods
    
    private func initUI() {
        cornerRadius = frame.height / 2
        backgroundColor = StyleKit.gradientColor(for: .baseGradientColor, with: bounds)
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        
        addTarget(self, action: #selector(PillButton.handleTouchDown), for: [.touchDragEnter, .touchDown])
    }
    
    private func setOptionsButton() {
        force = selectedForce
        duration = selectedDuration
        delay = selectedDelay
        damping = selectedDamping
        velocity = selectedVelocity
        animation = selectedAnimtion
        curve = selectedCurve
    }

    @objc private func handleTouchDown() {
        setOptionsButton()
        animate()
    }
}
