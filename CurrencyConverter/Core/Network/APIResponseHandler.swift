//
//  APIResponseHandler.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//


import UIKit

class APIResponseHandler: NSObject {
    
    func handleResponse(_ responseModel: APIResponseModel, endPoint: EndPoint, success: APISuccess, failure: APIFailure) {
        
        if responseModel.success ?? false {
            success?(responseModel)
        }
    }
}
