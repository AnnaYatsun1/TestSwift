//
//  ArticleDetailModel.swift
//  Test
//
//  Created by Anna Yatsun on 02.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

protocol ArticleModelType: Codable {
    
    var adxKeywords: String { get }
    var abstract: String { get }
    var id: Int { get }
    var count: Int { get }
    var source: String { get }
    var title: String { get }
    var publishedDate: String { get }
    var countType: String? { get }
}
