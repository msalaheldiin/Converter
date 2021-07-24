//
//  UIViewController+Alert.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 24/07/2021.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func alert(title: String, message: String) {
        let actionSheetController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: Alerts.ok, style: .default, handler: nil)
        actionSheetController.addAction(cancelAction)
        present(actionSheetController, animated: true, completion: nil)
    }
}

