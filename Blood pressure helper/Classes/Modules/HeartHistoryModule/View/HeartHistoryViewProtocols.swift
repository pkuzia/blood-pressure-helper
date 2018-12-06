//
//  HeartHistoryViewProtocols.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

/* Presenter to View */
protocol HeartHistoryViewInput: BaseViewInput {
    
    // MARK: Properties
    
    var viewOutput: HeartHistoryViewOutput? { get set }

    // MARK: Methods
}

/* View to Presenter */
protocol HeartHistoryViewOutput: class {
    
    // MARK: Properties
    
    var delegate: HeartHistoryModuleDelegate? { get set }

    // MARK: Methods
    
    func viewDidLoad()
}
