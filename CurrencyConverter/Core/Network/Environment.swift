//
//  Environment.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import Foundation


#if DEBUG
let environment: Environment = Environment.testing
#else
let environment: Environment = Environment.production
#endif


enum Environment {
    
    case testing
    case production
    
    
    var baseURL: String {
        
        switch self {
            
        case .testing:
            return "http://data.fixer.io/"
            
        case .production:
            return "http://data.fixer.io/"
        }
    }
}
