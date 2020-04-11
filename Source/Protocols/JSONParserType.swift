//
//  JSONParserType.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

protocol JSONParserType {
    func parse<ArticlesModel: ArticlesModelType>(data: Data) -> (ArticlesModel?, APIServiceError?)
}
