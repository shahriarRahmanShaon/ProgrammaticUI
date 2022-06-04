//
//  AppDelegate.swift
//  ProgrammaticUI
//
//  Created by sergio shaon on 4/6/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
     
        window = UIWindow()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        window?.rootViewController = SwippingViewController(collectionViewLayout: layout )
        
        window?.makeKeyAndVisible()
        return true
    }


}

