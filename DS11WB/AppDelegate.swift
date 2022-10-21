//
//  AppDelegate.swift
//  DS11WB
//
//  Created by fanqie on 10/20/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 设置全局颜色
        UITabBar.appearance().tintColor = .orange
        
        // 创建window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = MainVC()
        window?.makeKeyAndVisible()
        
        return true
    }


}

