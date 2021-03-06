//
//  AppDelegate.swift
//  iOS Example
//
//  Created by htomcat on 2018/06/19.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import UIKit
import THFlexiblePageController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let test1 = UIViewController()
        test1.view.backgroundColor = .red
        test1.title = "test1"
        test1.upperTabsColor = .red

        let test2 = UIViewController()
        test2.view.backgroundColor = .yellow
        test2.title = "test2"
        test2.upperTabsColor = .yellow

        let test3 = UIViewController()
        test3.view.backgroundColor = .blue
        test3.title = "test3"
        test3.upperTabsColor = .blue

        let test4 = UIViewController()
        test4.view.backgroundColor = .green
        test4.title = "test4"
        test4.upperTabsColor = .green

        let test5 = UIViewController()
        test5.view.backgroundColor = .black
        test5.title = "test5"
        test5.upperTabsColor = .black

        let root = RootViewController.makeInstance()
        let config = Configuration(tabsHeight: 30, tabsWidth: 100, selectedLineColor: .gray, backgroundColor: .white, hiddenSeparatedLine: true, spacing: 0)
        root.setPages([test1, test2, test3, test4, test5], config: config)
        window?.rootViewController = root
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

