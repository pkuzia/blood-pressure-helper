//
//  HeartHistoryRouter.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit

class HeartHistoryRouter {
    
    // MARK: Properties
    
    private (set) weak var viewController: HeartHistoryViewController?
    private (set) weak var navigationController: BaseViewNavigationController?
    private init() {}

    static let storyboardName = "HeartHistory"
    static let viewControllerType = String(describing: HeartHistoryViewController.self)
    static let storyboardID = viewControllerType + "ID"
    
    
    // MARK: Instantiation of module
    
    static func instantiateModule(delegate: HeartHistoryModuleDelegate? = nil) -> BaseViewNavigationController {

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? HeartHistoryViewController else {
            fatalError("ViewController with identifier \(storyboardID) in \(storyboardName).storyboard is not of type \(viewControllerType)")
        }

        let router = HeartHistoryRouter()
        let dataManager = HeartHistoryDataManager()
        let interactor = HeartHistoryInteractor(dataManager: dataManager)
        let presenter = HeartHistoryPresenter(interactor: interactor, router: router)
        presenter.delegate = delegate

        router.viewController = vc
        presenter.view = vc
        vc.viewOutput = presenter
        interactor.interactorOutput = presenter
        dataManager.dataManagerOutput = interactor
        
        let navigationController = BaseViewNavigationController()
        navigationController.viewControllers = [vc]
        router.navigationController = navigationController
        return navigationController
    }
}

extension HeartHistoryRouter: HeartHistoryRouterInterface {
    
    // MARK: Computed properties

    // MARK: Methods
    
    func pushAddNewItemModule(delegate: NewHistoryItemModuleDelegate?, animated: Bool) {
        guard let nvc = viewController?.navigationController else { fatalError() }
        NewHistoryItemRouter.pushModule(from: nvc, delegate: delegate, animated: animated)
    }
}
