//
//  EmailedArticleModel.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

struct EmailedArticleModel: ArticleModelType {
    
    var count: Int {
        return self.emailCount ?? 0
    }
    
    let abstract: String
    let adxKeywords: String
    var countType: String?
    var emailCount: Int?
    let id: Int
    let publishedDate: String
    let section: String
    let source: String
    let title: String
    let type: String
    let updated: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        
        case abstract
        case adxKeywords = "adx_keywords"
        case countType = "count_type"
        case emailCount = "email_count"
        case id
        case publishedDate = "published_date"
        case section
        case source
        case title
        case type
        case updated
        case url
    }
    
    static var empty: EmailedArticleModel {
        return EmailedArticleModel(
            abstract: "",
            adxKeywords: "",
            countType: "",
            emailCount: 0,
            id: 0,
            publishedDate: "",
            section: "",
            source: "",
            title: "",
            type: "",
            updated: "",
            url: ""
        )
    }
}
