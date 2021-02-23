//
//  TabHomeCoodinator.swift
//  Yopter
//
//  Created by Hector Climaco on 02/02/21.
//


import UIKit

protocol TabHomeProtocool {
  func changeTabIndex(_ view: TypeViewController)
}

enum TypeViewController:Int {
  case home = 0
  case favorite = 1
  case maps = 2
  case menu = 3
}

class TabHomeCoodinator: NSObject, Coordinator, UINavigationControllerDelegate {
  
  var navigationController: UINavigationController
  var childCoordinators = [Coordinator]()
  var tabBarController:TabBarHome?
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    //Method for init coordinator
    tabBarController = TabBarHome(coordinator: self )
    
    let home = TabHomeCoodinator(navigationController: UINavigationController())
    home.navigationController.isNavigationBarHidden = true
    home.goToHome()
    
    let favorite = TabHomeCoodinator(navigationController: UINavigationController())
    favorite.goToFavorite()
    favorite.navigationController.isNavigationBarHidden = true
    
    let maps = TabHomeCoodinator(navigationController: UINavigationController())
    maps.navigationController.isNavigationBarHidden = true
    maps.goToMaps()
    
    let menu = TabHomeCoodinator(navigationController: UINavigationController())
    menu.navigationController.isNavigationBarHidden = true
    menu.goToMenu()
    
    tabBarController?.viewControllers = [home.navigationController, favorite.navigationController, maps.navigationController, menu.navigationController]
    
    navigationController.pushViewController(tabBarController!, animated: true)
  }
  
  
  func goToHome() {
    let vc = HomeRouter.createHomeModule(coordinator: self)
    // Use only in tabbar
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: TypeViewController.home.rawValue)
    navigationController.pushViewController(vc, animated: true)
  }
  
  
  func goToFavorite() {
    let vc = FavoriteRouter.createFavoriteModule(coordinator: self)
    
    // Use only in tabbar
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: TypeViewController.favorite.rawValue)
    navigationController.pushViewController(vc, animated: true)
  }
  
  func goToMaps() {
    let vc = MapsRouter.createMapsModule(coordinator: self)
    // Use only in tabbar
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: TypeViewController.maps.rawValue)
    navigationController.pushViewController(vc, animated: true)
  }
  
  func goToMenu() {
    let vc = MenuRouter.createMenuModule(coordinator: self,tabHomeDelegate: self)
    // Use only in tabbar
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: TypeViewController.menu.rawValue)
    navigationController.pushViewController(vc, animated: true)
  }
  
}


