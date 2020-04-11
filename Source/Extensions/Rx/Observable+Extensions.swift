//
//  Observable+Extensions.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

extension Observable {
    
    func mapVoid() -> Observable<Void> {
        return self.map { _ in Void() }
    }
}
