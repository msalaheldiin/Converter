//
//  File.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import Foundation

class RatesService : BaseService {

    
    func getRates(success: APISuccess, failure: APIFailure) {
        
    let endPoint = EndPoint(path: API.GetRates, method: .get, parameters: nil)
    NetworkManager.manager.request(endPoint: endPoint, success: success, failure: failure)
  }
}
