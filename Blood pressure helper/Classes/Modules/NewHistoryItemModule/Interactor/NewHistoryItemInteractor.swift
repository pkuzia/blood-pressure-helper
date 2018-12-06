//
//  NewHistoryItemInteractor.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

class NewHistoryItemInteractor {
    
    // MARK: Properties
    
    fileprivate (set) var dataManagerInput: NewHistoryItemDataManagerInput
    weak var interactorOutput: NewHistoryItemInteractorOutput?

    // MARK: InteractorInput stored properties

    // MARK: InteractorOutput stored properties

    // MARK: Lifecycle
    
    init(dataManager: NewHistoryItemDataManagerInput = NewHistoryItemDataManager()) {
        self.dataManagerInput = dataManager
    }
}

extension NewHistoryItemInteractor: NewHistoryItemInteractorInput {
    
    // MARK: Computed properties

    // MARK: Methods
}

extension NewHistoryItemInteractor: NewHistoryItemDataManagerOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}
