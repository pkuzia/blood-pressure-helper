//
//  HeartModuleViewProtocols.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

/* Presenter to View */
protocol HeartModuleViewInput: BaseViewInput {
    
    // MARK: Properties
    
    var viewOutput: HeartModuleViewOutput? { get set }

    // MARK: Methods
}

/* View to Presenter */
protocol HeartModuleViewOutput: class {
    
    // MARK: Properties
    
    var delegate: HeartModuleModuleDelegate? { get set }

    // MARK: Methods
}
