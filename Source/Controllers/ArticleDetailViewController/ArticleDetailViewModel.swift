//
//  ArticleDetailViewModel.swift
//  Test
//
//  Created by Anna Yatsun on 02.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

struct ArticleDetailViewModelConfigurator: ConfiguratorType {
    
    let model: ArticleModelType
    let storageService: StorageService
    
    init(model: ArticleModelType, storageService: StorageService) {
        self.model = model
        self.storageService = storageService
    }
}

enum ArticleDetailViewEvents: EventsType {
    
    case addToFavorites
    case deleteFromeFavorites
}

class ArticleDetailViewModel: ViewModel<ArticleDetailViewModelConfigurator, ArticleDetailViewEvents> {
    
    let model: ArticleModelType
    let storageService: StorageService
    
    override init(configurator: ArticleDetailViewModelConfigurator) {
        self.model = configurator.model
        self.storageService = configurator.storageService
        
        super.init(configurator: configurator)
    }
    
    override func preprareBindings(disposeBag: DisposeBag) {
        self.events
            .bind { [weak self] event in
                self?.handle(events: event)
            }
            .disposed(by: disposeBag)
    }
    
    override func handle(events: ArticleDetailViewEvents) {
        switch events {
        case .addToFavorites:
            self.storageService.save(model: self.model)
        case .deleteFromeFavorites:
            self.storageService.deleteArticle(by: self.model.id ?? 0)
        }
    }
}
