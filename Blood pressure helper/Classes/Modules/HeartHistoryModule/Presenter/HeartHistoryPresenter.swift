//
//  HeartHistoryPresenter.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import Foundation

class HeartHistoryPresenter {
    
    // MARK: Properties
    
    weak var delegate: HeartHistoryModuleDelegate?

    private (set) var router: HeartHistoryRouter
    private (set) var interactor: HeartHistoryInteractorInput
    weak var view: HeartHistoryViewInput?

    // MARK: PresenterOutput stored properties

    // MARK: ViewOutput stored properties

    // MARK: Lifecycle
    
    init(interactor: HeartHistoryInteractor, router: HeartHistoryRouter) {
        self.interactor = interactor
        self.router = router
    }
}

extension HeartHistoryPresenter: HeartHistoryInteractorOutput {
    
    // MARK: Computed properties

    // MARK: Methods
}

extension HeartHistoryPresenter: HeartHistoryViewOutput {
    
    // MARK: Computed properties

    // MARK: Methods
    
    func viewDidLoad() {
        router.pushAddNewItemModule(delegate: self, animated: true)
    }
}

extension HeartHistoryPresenter: NewHistoryItemModuleDelegate {
    
}
