//
//  HeartHistoryInteractor.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

class HeartHistoryInteractor {
    
    // MARK: Properties
    
    fileprivate (set) var dataManagerInput: HeartHistoryDataManagerInput
    weak var interactorOutput: HeartHistoryInteractorOutput?

    // MARK: InteractorInput stored properties

    // MARK: InteractorOutput stored properties

    // MARK: Lifecycle
    
    init(dataManager: HeartHistoryDataManagerInput = HeartHistoryDataManager()) {
        self.dataManagerInput = dataManager
    }
}

extension HeartHistoryInteractor: HeartHistoryInteractorInput {
    
    // MARK: Computed properties

    // MARK: Methods
}

extension HeartHistoryInteractor: HeartHistoryDataManagerOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}
