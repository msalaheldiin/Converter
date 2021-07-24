//
//  Decodable+Parsing.swift
//  FoodicsTask
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import Foundation

extension Decodable {
    
    init?(from response: Any?) {
        
        do {
            guard let response = response else { return nil }
            
            let data = try JSONSerialization.data(withJSONObject: response, options: .prettyPrinted)
            self = try JSONDecoder().decode(Self.self, from: data)
            
        } catch {
            
            return nil
        }
    }
}
