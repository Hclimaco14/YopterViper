//
//  RecoverPasswordRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 11/02/21.
//  
//

import Foundation
import UIKit

class RecoverPasswordRouter: RecoverPasswordRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createRecoverPasswordModule(coordinator:Coordinator? = nil) -> RecoverPasswordView {
//    class func createRecoverPasswordModule() -> UIViewController {

            let view = RecoverPasswordView ()
            let presenter: RecoverPasswordPresenterProtocol & RecoverPasswordInteractorOutputProtocol = RecoverPasswordPresenter()
            let interactor: RecoverPasswordInteractorInputProtocol = RecoverPasswordInteractor()
//            let router: RecoverPasswordRouterProtocol = RecoverPasswordRouter()
            let router: RecoverPasswordRouterProtocol = RecoverPasswordRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
  
  func close() {
    guard let coor = coordinator as? AppCoordinator else  { return }
    coor.dissMiss()
  }
   
    
}
