//
//  Optional+Extension.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

extension Optional {
    
    func `do`(_ action: (Wrapped) -> ()) {
        self.map(action)
    }
}
