//
//  ArticlesModelType.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

protocol ArticlesModelType: Codable {
    
    associatedtype Model = ArticleModelType
    
    static var type: ArticleType { get }
    
    var copyright: String { get }
    var numResults: Int { get }
    var results: [Model] { get }
    var status: String { get }
}
