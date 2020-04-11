//
//  APIServiceError.swift
//  Test
//
//  Created by Anna Yatsun on 11.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

enum APIServiceError: Error {
    
    case networkError(Error)
    case dataNotFound
    case jsonParsingError
    case invalidStatusCode(Int)
}
