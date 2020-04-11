//
//  JSONParser.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

class JSONParser: JSONParserType {
    
    private let decoder: JSONDecoder
    
    init(decoder: JSONDecoder) {
        self.decoder = decoder
    }
    
    func parse<ArticlesModel: ArticlesModelType>(data: Data) -> (ArticlesModel?, APIServiceError?) {
        let model = try? self.decoder.decode(MMOdel.self, from: data)
        print(model)
        
        if let model = try? self.decoder.decode(ArticlesModel.self, from: data) {
            return (model, nil)
        } else {
            return (nil, .jsonParsingError)
        }
    }
}

struct MMOdel: Codable {
    var copyright: String
    var num_results: Int
    var results: [SharedArticleMModel]
    var status: String
}

struct SharedArticleMModel: Codable {
    
    var count: Int {
        return self.shareCount ?? 0
    }
    
    let abstract: String
    let adxKeywords: String
    let countType: String?
    let id: Int
    let shareCount: Int?
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
        case id
        case shareCount = "share_count"
        case publishedDate = "published_date"
        case section
        case source
        case title
        case type
        case updated
        case url
    }
}
