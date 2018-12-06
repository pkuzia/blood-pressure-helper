//
//  ModuleCoordinator.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation
import UIKit

class ModuleCoordinator {
    
    // MARK: - Singleton
    
    static let shared = ModuleCoordinator()
    private init() {}
    
    // MARK: - Properties
    
    let heartHistoryNavigationController: BaseViewNavigationController = {
        return HeartHistoryRouter.instantiateModule()
    }()
    
    // MARK: - Functions
    
    func configureInitialViewController(for appDelegate: AppDelegate) {
        appDelegate.window?.rootViewController = heartHistoryNavigationController
    }
}

