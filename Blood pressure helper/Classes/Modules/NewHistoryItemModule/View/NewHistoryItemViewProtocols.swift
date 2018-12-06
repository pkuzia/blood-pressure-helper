//
//  NewHistoryItemViewProtocols.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

/* Presenter to View */
protocol NewHistoryItemViewInput: BaseViewInput {
    
    // MARK: Properties
    
    var viewOutput: NewHistoryItemViewOutput? { get set }

    // MARK: Methods
}

/* View to Presenter */
protocol NewHistoryItemViewOutput: class {
    
    // MARK: Properties
    
    var delegate: NewHistoryItemModuleDelegate? { get set }

    // MARK: Methods
}
