//
//  AppDelegate.swift
//  Yopter
//
//  Created by Hector Climaco on 29/01/21.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var appCoordinator:AppCoordinator?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    
    IQKeyboardManager.shared.enable = true
    let navController = UINavigationController()
    appCoordinator = AppCoordinator(navigationController: navController)
    appCoordinator?.start()
  
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = navController
    window?.makeKeyAndVisible()
    
    return true
  }


}

