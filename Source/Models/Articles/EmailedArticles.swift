//
//  EmailedArticle.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

struct EmailedArticles: ArticlesModelType {
    
    static var type: ArticleType {
        return .emailed
    }
    
    let copyright: String
    let numResults: Int
    let results: [EmailedArticleModel]
    let status: String
    
    enum CodingKeys: String, CodingKey {
        case copyright
        case numResults = "num_results"
        case results
        case status
    }
    
    static var empty: EmailedArticles {
        return .init(copyright: "", numResults: 0, results: [], status: "")
    }
}
