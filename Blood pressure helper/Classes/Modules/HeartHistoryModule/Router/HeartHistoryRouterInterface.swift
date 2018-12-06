//
//  HeartHistoryRouterInterface.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit

/* Presenter to Router */
protocol HeartHistoryRouterInterface: class {
    
    // MARK: Properties

    // MARK: Methods
    
    func pushAddNewItemModule(delegate: NewHistoryItemModuleDelegate?, animated: Bool)
}
