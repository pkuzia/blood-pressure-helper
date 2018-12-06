//
//  HeartHistoryViewController.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit

class HeartHistoryViewController: BaseViewController {
    
    // MARK: Outlets

    // MARK: Properties
    
    var viewOutput: HeartHistoryViewOutput?

    // MARK: ViewInput stored properties

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        viewOutput?.viewDidLoad()
    }

    // MARK: Appearance
    
    private func initUI() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    // MARK: User Interaction

    //MARK: Additional Helpers
}

extension HeartHistoryViewController: HeartHistoryViewInput {
    
    // MARK: Computed properties

    // MARK: Methods
}
