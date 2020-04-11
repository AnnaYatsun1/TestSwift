//
//  ViewedArticle.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

struct ViewedArticles: ArticlesModelType {
    
    static var type: ArticleType {
        return .viewed
    }
    
    let copyright: String
    let numResults: Int
    let results: [ViewedArticleModel]
    let status: String
    
    enum CodingKeys: String, CodingKey {
        case copyright
        case numResults = "num_results"
        case results
        case status
    }
    
    static var empty: ViewedArticles {
        return .init(copyright: "", numResults: 0, results: [], status: "")
    }
}
