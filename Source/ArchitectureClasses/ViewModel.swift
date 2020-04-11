//
//  ViewModel.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import RxSwift
import RxCocoa

class ViewModel<Configurator: ConfiguratorType, Events: EventsType> {
    
    var events: Observable<Events> {
        return self.eventHandler.asObservable()
    }
    
    let eventHandler = PublishSubject<Events>()
    let disposeBag = DisposeBag()

    init(configurator: Configurator) {

        self.preprareBindings(disposeBag: self.disposeBag)
    }
    
    open func handle(events: Events) {
        
    }
    
    open func preprareBindings(disposeBag: DisposeBag) {
        
    }
}
