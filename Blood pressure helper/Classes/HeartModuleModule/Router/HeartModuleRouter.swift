//
//  HeartModuleRouter.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit

class HeartModuleRouter {
    
    // MARK: Properties
    
    private (set) weak var viewController: HeartModuleViewController?
    private init() {}

    static let storyboardName = "HeartModule"
    static let viewControllerType = String(describing: HeartModuleViewController.self)
    static let storyboardID = viewControllerType + "ID"

    // MARK: Instantiation of module
    
    static func instantiateModule(delegate: HeartModuleModuleDelegate? = nil) -> HeartModuleViewController {

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? HeartModuleViewController else {
            fatalError("ViewController with identifier \(storyboardID) in \(storyboardName).storyboard is not of type \(viewControllerType)")
        }

        let router = HeartModuleRouter()
        let dataManager = HeartModuleDataManager()
        let interactor = HeartModuleInteractor(dataManager: dataManager)
        let presenter = HeartModulePresenter(interactor: interactor, router: router)
        presenter.delegate = delegate

        router.viewController = vc
        presenter.view = vc
        vc.viewOutput = presenter
        interactor.interactorOutput = presenter
        dataManager.dataManagerOutput = interactor
        return vc
    }
}

extension HeartModuleRouter: HeartModuleRouterInterface {
    
    // MARK: Computed properties

    // MARK: Methods
}
