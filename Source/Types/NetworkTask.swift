//
//  NetworkTask.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

class NetworkTask {
    
    public private(set) var isCancelled = false
    
    private let task: URLSessionTask
    
    init(task: URLSessionTask) {
        self.task = task
    }
    
    public func cancel() {
        if self.task.state == .running {
            self.task.cancel()
        }
        
        self.isCancelled = true
    }
}
