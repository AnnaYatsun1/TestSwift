//
//  AlamofireAPIService+Emailed.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

extension AlamofireAPIService {
    
    func getArticles<ArticlesModel: ArticlesModelType>(completion: @escaping (Result<ArticlesModel, APIServiceError>) -> ()
    ) {
        self.task = self.requestData(
            url: .init(api: .value, type: ArticlesModel.type, period: .month),
            method: .get
        ) { result in
            switch result {
            case let .success(data):
                let (model, error): (ArticlesModel?, APIServiceError?) = self.parser.parse(data: data)
                model.do { completion(.success($0)) }
                error.do { completion(.failure($0)) }
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
}
