//
//  File.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import Foundation

extension NSObject {
    func propertyNames() -> [String] {
        let mirror = Mirror(reflecting: self)
        return mirror.children.compactMap{ $0.label}
    }
    
    func propertyValues() -> [Double] {
        let mirror = Mirror(reflecting: self)
        return (mirror.children.compactMap{$0.value as? Double})
       }
}
