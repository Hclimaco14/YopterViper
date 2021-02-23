//
//  LoginRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

class LoginRouter: LoginRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createLoginModule(coordinator:Coordinator? = nil) -> LoginView {

            let view = LoginView ()
            let presenter: LoginPresenterProtocol & LoginInteractorOutputProtocol = LoginPresenter()
            let interactor: LoginInteractorInputProtocol = LoginInteractor()
            let router: LoginRouterProtocol = LoginRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
  
  
  func goToHome() {
    guard let navCoor = coordinator as? AppCoordinator else { return }
    navCoor.goToTabHome()
    
  }
  
  func goToRegister() {
    guard let navCoor = coordinator as? AppCoordinator else { return }
    navCoor.goToTypeResgister()
    
  }
    
  func goToRecoverPassword() {
    guard let navCoor = coordinator as? AppCoordinator else { return }
    navCoor.goToRecoverPassword()
  }
    
}
