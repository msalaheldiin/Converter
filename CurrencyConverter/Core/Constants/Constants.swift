//
//  Constants.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import Foundation
import UIKit


//MARK:- APIS

enum API {
    
    static let GetRates = "api/latest?"
}


//MARK:- Storyboards

enum Storyboards {
    
    static let Rates = "Rates"
}


//MARK:- NumberFormating

enum NumberFormating {
    
    static let formatTwoDigits  = "%.2f"
}


//MARK:- Alerts

enum Alerts {
    static let warning = "Warning"
    static let warningMessage = "Please select the equivalent rate you want to calculate according to EURO"
    static let ok = "ok"
}
