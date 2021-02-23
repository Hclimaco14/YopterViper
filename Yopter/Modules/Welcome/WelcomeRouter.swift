//
//  WelcomeRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 08/02/21.
//  
//

import Foundation
import UIKit

class WelcomeRouter: WelcomeRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createWelcomeModule(coordinator:Coordinator? = nil) -> WelcomeView {
//    class func createWelcomeModule() -> UIViewController {

            let view = WelcomeView ()
            let presenter: WelcomePresenterProtocol & WelcomeInteractorOutputProtocol = WelcomePresenter()
            let interactor: WelcomeInteractorInputProtocol = WelcomeInteractor()
//            let router: WelcomeRouterProtocol = WelcomeRouter()
            let router: WelcomeRouterProtocol = WelcomeRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }

  
  func goToRegister() {
    guard let coor = coordinator as? AppCoordinator else { return }
    coor.goToTypeResgister()
  }
  
  func goToLogin() {
    guard let coor = coordinator as? AppCoordinator else { return }
    coor.goToLogin()
  }
  
  func goToTermsAndConditions() {
    guard let coor = coordinator as? AppCoordinator else { return }
    coor.goToTermsAndConditions()
  }
   
    
}
