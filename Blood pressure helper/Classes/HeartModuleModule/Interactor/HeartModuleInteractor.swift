//
//  HeartModuleInteractor.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

class HeartModuleInteractor {
    
    // MARK: Properties
    
    fileprivate (set) var dataManagerInput: HeartModuleDataManagerInput
    weak var interactorOutput: HeartModuleInteractorOutput?

    // MARK: InteractorInput stored properties

    // MARK: InteractorOutput stored properties

    // MARK: Lifecycle
    
    init(dataManager: HeartModuleDataManagerInput = HeartModuleDataManager()) {
        self.dataManagerInput = dataManager
    }
}

extension HeartModuleInteractor: HeartModuleInteractorInput {
    
    // MARK: Computed properties

    // MARK: Methods
}

extension HeartModuleInteractor: HeartModuleDataManagerOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}
