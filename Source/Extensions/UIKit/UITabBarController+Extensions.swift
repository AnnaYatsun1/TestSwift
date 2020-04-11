//
//  UINavBar+Extensions.swift
//  Test
//
//  Created by Anna Yatsun on 04.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

extension UITabBarController {
    
    func configureTabBar(_ action: @escaping (UITabBar) -> ())  {
        return action(self.tabBar)
    }
}
