//
//  AppDelegate.swift
//  Test
//
//  Created by Anna Yatsun on 01.03.2020.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import Alamofire
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Test")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = self.appFlow()
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
    
    func appFlow() -> UIViewController {
        let parser = JSONParser(decoder: .init())
        let requestService = AlamofireAPIService(parser: parser)
        let storageService = CoreDataStorageService(persistentContainer: self.persistentContainer)
        
        return AppFlowController(requestService: requestService, storageService: storageService)
    }
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = self.persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
