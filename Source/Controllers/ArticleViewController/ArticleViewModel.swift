//
//  ArticleViewModel.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

struct ArticleViewModelConfigurator<Model: ArticlesModelType>: ConfiguratorType {
    
    let model: BehaviorRelay<Model>
    let requestService: APIServiceType
    
    init(model: BehaviorRelay<Model>, requestService: APIServiceType) {
        self.model = model
        self.requestService = requestService
    }
}

enum ArticleViewEvents: EventsType {
    case updateModel
    case showArticleDetailView(ArticleModelType)
}

class ArticleViewModel<Model>: ViewModel<ArticleViewModelConfigurator<Model>, ArticleViewEvents>
    where Model: ArticlesModelType
{
    
    private let requestService: APIServiceType
    
    let model: BehaviorRelay<Model>
    
    override init(configurator: ArticleViewModelConfigurator<Model>) {
        self.requestService = configurator.requestService
        self.model = configurator.model
        
        super.init(configurator: configurator)
    }
    
    override func preprareBindings(disposeBag: DisposeBag) {
        self.eventHandler
            .map { $0 }
            .bind { [weak self] in
                self?.handle(events: $0)
            }
            .disposed(by: disposeBag)
    }
    
    override func handle(events: ArticleViewEvents) {
        switch events {
        case .updateModel:
            self.requestService.getArticles {  (result: Result<Model, APIServiceError>)  in
                switch result {
                case let .success(model):
                    self.model.accept(model)
                case let .failure(error):
                    print(error)
                }
            }
        case .showArticleDetailView:
            break
        }
    }
}
