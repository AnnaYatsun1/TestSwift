//
//  Reactive+UIViewControllerExtensions.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

public extension Reactive where Base: UIViewController {
    
    var viewWillAppear: ControlEvent<()> {
        let source = self.methodInvoked(#selector(Base.viewWillAppear)).mapVoid()
        
        return ControlEvent(events: source)
    }
}
