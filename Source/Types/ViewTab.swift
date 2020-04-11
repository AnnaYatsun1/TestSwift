//
//  ViewTab.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewTab {
    
    let controller: UIViewController
    let item: UITabBarItem
    
    init(title: String, controller: UIViewController, image: UIImage? = nil, selectedImage: UIImage? = nil) {
        controller.title = title
        
        self.controller = controller
        self.item = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
    }
}
