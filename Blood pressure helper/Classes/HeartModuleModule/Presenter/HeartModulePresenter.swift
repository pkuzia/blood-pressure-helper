//
//  HeartModulePresenter.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

class HeartModulePresenter {
    
    // MARK: Properties
    
    weak var delegate: HeartModuleModuleDelegate?

    private (set) var router: HeartModuleRouter
    private (set) var interactor: HeartModuleInteractorInput
    weak var view: HeartModuleViewInput?

    // MARK: PresenterOutput stored properties

    // MARK: ViewOutput stored properties

    // MARK: Lifecycle
    
    init(interactor: HeartModuleInteractor, router: HeartModuleRouter) {
        self.interactor = interactor
        self.router = router
    }
}

extension HeartModulePresenter: HeartModuleInteractorOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}

extension HeartModulePresenter: HeartModuleViewOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}
