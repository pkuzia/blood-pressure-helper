//
//  NewHistoryItemRouter.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit

class NewHistoryItemRouter {
    
    // MARK: Properties
    
    private (set) weak var viewController: NewHistoryItemViewController?
    private init() {}

    static let storyboardName = "NewHistoryItem"
    static let viewControllerType = String(describing: NewHistoryItemViewController.self)
    static let storyboardID = viewControllerType + "ID"

    // MARK: Instantiation of module
    
    static func instantiateModule(delegate: NewHistoryItemModuleDelegate? = nil) -> NewHistoryItemViewController {

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? NewHistoryItemViewController else {
            fatalError("ViewController with identifier \(storyboardID) in \(storyboardName).storyboard is not of type \(viewControllerType)")
        }

        let router = NewHistoryItemRouter()
        let dataManager = NewHistoryItemDataManager()
        let interactor = NewHistoryItemInteractor(dataManager: dataManager)
        let presenter = NewHistoryItemPresenter(interactor: interactor, router: router)
        presenter.delegate = delegate

        router.viewController = vc
        presenter.view = vc
        vc.viewOutput = presenter
        interactor.interactorOutput = presenter
        dataManager.dataManagerOutput = interactor
        return vc
    }
    
    static func pushModule(from navigationController: UINavigationController, delegate: NewHistoryItemModuleDelegate?, animated: Bool) {
        let vc = instantiateModule(delegate: delegate)
        navigationController.pushViewController(vc, animated: animated)
    }
}

extension NewHistoryItemRouter: NewHistoryItemRouterInterface {
    
    // MARK: Computed properties

    // MARK: Methods
}
