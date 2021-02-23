//
//  AppCoordinator.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//


import UIKit

class AppCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
  
  var navigationController: UINavigationController
  var childCoordinators = [Coordinator]()
  var tabBarController:UITabBarController?
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    self.goToWelcome()
  }
  
  func goToTabHome() {
    tabBarController = UITabBarController()
    
    let offerts = OffertRouter.createOffertModule(coordinator: self)
    offerts.tabBarItem = UITabBarItem(title: "Ofertas", image: UIImage(named: "home"), tag: 0)
    
    
    let favorite = FavoriteRouter.createFavoriteModule(coordinator: self)
    favorite.tabBarItem = UITabBarItem(title: "Favoritos", image: UIImage(named: "star_icon"), tag: 1)
    
    let filter = FilterRouter.createFilterModule(coordinator: self)
    filter.tabBarItem = UITabBarItem(title: "Filtros", image: UIImage(named: "filter_icon"), tag: 2)
    
    let maps = MapsRouter.createMapsModule(coordinator: self)
    maps.tabBarItem = UITabBarItem(title: "Mapa", image: UIImage(named: "nearby_icon"), tag: 3)
    
    let menu = MenuRouter.createMenuModule(coordinator: self)
    menu.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(named: "iconMenu"), tag: 4)
    
    //Maps Updates
    offerts.delegate = maps
    favorite.delegate = maps
    
    //Offert Updates
    filter.delegate = offerts
    maps.delegate = offerts
    
    tabBarController?.viewControllers = [offerts, favorite,filter, maps, menu]
    navigationController.isNavigationBarHidden = false
    navigationController.setViewControllers([tabBarController!], animated: true)
  }
  
  func goToLogin() {
    let vc = LoginRouter.createLoginModule(coordinator: self)
    vc.isNavigationBarHidden = true
    navigationController.pushViewController(vc, animated: true)
  }
  
  func goToRegister(type: typeRegister) {
    let vc = RegisterRouter.createRegisterModule(coordinator: self)
    vc.isNavigationBarHidden = false
    vc.typeRegister = type
    navigationController.pushViewController(vc, animated: true)
  }
  
  
  func goToHome() {
    let vc = OffertRouter.createOffertModule(coordinator: self)
    // Use only in tabbar
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: TypeViewController.offert.rawValue)
    navigationController.pushViewController(vc, animated: true)
  }
  

  func goToDetail() {
    let vc = DetailRouter.createDetailModule(coordinator: self)
    // Use only in tabbar
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: TypeViewController.menu.rawValue)
    navigationController.pushViewController(vc, animated: true)
  }
  
  func goToTermsAndConditions() {
    let vc = TermsAndConditionsRouter.createTermsAndConditionsModule(coordinator: self)
    vc.isNavigationBarHidden = true
    navigationController.pushViewController(vc,animated: true)
    
  }
  
  func goToWelcome() {
    let vc = WelcomeRouter.createWelcomeModule(coordinator: self)
    vc.isNavigationBarHidden = true
    navigationController.pushViewController(vc, animated: true)
  }
  
  func goToRecoverPassword() {
    let vc = RecoverPasswordRouter.createRecoverPasswordModule(coordinator: self)
    vc.isNavigationBarHidden = true
    navigationController.pushViewController(vc, animated: true)
  }
  
  func goToTypeResgister() {
    let vc = TypeRegisterRouter.createTypeRegisterModule(coordinator: self)
    vc.isNavigationBarHidden = true
    navigationController.pushViewController(vc, animated: true)
  }
  
  func dissMiss() {
    navigationController.popViewController(animated: true)
  }
  
  func childDidFinish(_ child:Coordinator?) {
    for (index,coordinator) in childCoordinators.enumerated() {
      if coordinator === child {
        childCoordinators.remove(at: index)
        break
      }
    }
  }
  
  func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
    
    guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
      return
    }
    
    if navigationController.viewControllers.contains(fromViewController) { return }
    /*
     //Remove subCoordiantor when back
     if let viewController = fromViewController as? <#ViewControllerSubCoordinator#> {
     childDidFinish(buyViewController.coordinator)
     }
     */
  }
}


