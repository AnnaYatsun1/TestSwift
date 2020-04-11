//
//  ViewedArticleModel.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

struct ViewedArticleModel: ArticleModelType {
    
    var count: Int {
        return self.views ?? 0
    }
    
    let abstract: String
    let adxKeywords: String
    var countType: String? = "Viewed"
    let id: Int
    let publishedDate: String
    let section: String
    let source: String
    let title: String
    let type: String
    let url: String
    var views: Int?
    
    enum CodingKeys: String, CodingKey {
        case abstract
        case adxKeywords = "adx_keywords"
        case countType = "count_type"
        case id
        case publishedDate = "published_date"
        case section
        case source
        case title
        case type
        case url
        case views
    }
}
