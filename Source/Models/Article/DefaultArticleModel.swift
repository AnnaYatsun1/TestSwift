//
//  DefaultArticleModel.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

struct DefaultArticleModel: ArticleModelType {
    
    let adxKeywords: String
    let abstract: String
    let id: Int
    let count: Int
    let source: String
    let title: String
    let publishedDate: String
    var countType: String?
}
