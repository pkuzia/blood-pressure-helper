//
//  BaseViewNavigationController.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 05/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit

class BaseViewNavigationController: UINavigationController {

    var navigationBarHeight: CGRect {
        get {
            return navigationBar.frame
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        navigationBar.isTranslucent = false
        navigationBar.barTintColor = StyleKit.gradientColor(for: .baseGradientColor, with: navigationBarHeight)
        navigationBar.tintColor = StyleKit.color(for: .navigationBarTintColor)
        navigationBar.titleTextAttributes = StyleKit.navBarAttributes()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
