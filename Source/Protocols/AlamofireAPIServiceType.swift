//
//  AlamofireAPIServiceType.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation
import Alamofire

protocol AlamofireAPIServiceType {
    
    func requestData(url: APIUrl, method: HTTPMethod, headers: HTTPHeaders?, completion: @escaping (Result<Data, APIServiceError>) -> Void) -> NetworkTask?
}
