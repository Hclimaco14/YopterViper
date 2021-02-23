//
//  RegisterRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

class RegisterRouter: RegisterRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createRegisterModule(coordinator:Coordinator? = nil) -> RegisterView {

            let view = RegisterView ()
            let presenter: RegisterPresenterProtocol & RegisterInteractorOutputProtocol = RegisterPresenter()
            let interactor: RegisterInteractorInputProtocol = RegisterInteractor()
            let router: RegisterRouterProtocol = RegisterRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
   
    
}
