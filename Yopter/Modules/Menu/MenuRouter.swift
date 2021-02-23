//
//  MenuRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

class MenuRouter: MenuRouterProtocol {
  
  fileprivate weak var coordinator:Coordinator?
  
  init(coordinator:Coordinator?) {
    self.coordinator = coordinator
  }
  
  
  class func createMenuModule(coordinator:Coordinator? = nil) -> MenuView {

    let view = MenuView ()
    let presenter: MenuPresenterProtocol & MenuInteractorOutputProtocol = MenuPresenter()
    let interactor: MenuInteractorInputProtocol = MenuInteractor()
    
    let router: MenuRouterProtocol = MenuRouter(coordinator:coordinator)
    
    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.interactor = interactor
    interactor.presenter = presenter
    
    return view
    
  }
  
  func goToHome(view: MenuView) {
    view.tabBarController?.selectedIndex = TypeViewController.offert.rawValue
  }
  
  
  
}
