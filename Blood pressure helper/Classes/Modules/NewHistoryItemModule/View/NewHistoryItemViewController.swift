//
//  NewHistoryItemViewController.swift
//  Blood pressure helper
//
//  Created by Przemysław Kuzia on 04/12/2018.
//  Copyright © 2018 CodiFox. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class NewHistoryItemViewController: BaseViewController {
    
    // MARK: Outlets

    @IBOutlet weak var systolicBloodPressureTextField: SkyFloatingLabelTextFieldWithIcon!
    @IBOutlet weak var diastolicBloodPressureTextField: SkyFloatingLabelTextFieldWithIcon!
    @IBOutlet weak var heartBeatTextField: SkyFloatingLabelTextFieldWithIcon!
    
    @IBOutlet weak var saveButton: PillButton!
    
    // MARK: Properties
    
    var viewOutput: NewHistoryItemViewOutput?

    // MARK: ViewInput stored properties

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    // MARK: Appearance
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func initUI() {
        title = LocalizedStrings.NewHistoryItem.title
        saveButton.setupButton(title: LocalizedStrings.NewHistoryItem.saveButton)
    }

    // MARK: User Interaction

    //MARK: Additional Helpers
}

extension NewHistoryItemViewController: NewHistoryItemViewInput {
    
    // MARK: Computed properties

    // MARK: Methods
}
