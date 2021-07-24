//
//  APIResponseModel.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import UIKit
import AnyCodable

class APIResponseModel: BaseModel, Codable {
       var success: Bool?
       var timestamp: Int?
       var base: String?
       var date: String?
       var rates: Rates?
}

