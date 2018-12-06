//
//  NewHistoryItemPresenter.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

class NewHistoryItemPresenter {
    
    // MARK: Properties
    
    weak var delegate: NewHistoryItemModuleDelegate?

    private (set) var router: NewHistoryItemRouter
    private (set) var interactor: NewHistoryItemInteractorInput
    weak var view: NewHistoryItemViewInput?

    // MARK: PresenterOutput stored properties

    // MARK: ViewOutput stored properties

    // MARK: Lifecycle
    
    init(interactor: NewHistoryItemInteractor, router: NewHistoryItemRouter) {
        self.interactor = interactor
        self.router = router
    }
}

extension NewHistoryItemPresenter: NewHistoryItemInteractorOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}

extension NewHistoryItemPresenter: NewHistoryItemViewOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}
