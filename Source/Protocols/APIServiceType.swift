//
//  APIService.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Alamofire
import Foundation

protocol APIServiceType {
    
    func getArticles<ArticlesModel: ArticlesModelType>(completion: @escaping (Result<ArticlesModel, APIServiceError>) -> ()
    ) 
}
