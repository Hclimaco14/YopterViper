//
//  TermsAndConditionsRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 09/02/21.
//  
//

import Foundation
import UIKit

class TermsAndConditionsRouter: TermsAndConditionsRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createTermsAndConditionsModule(coordinator:Coordinator? = nil) -> TermsAndConditionsView {
//    class func createTermsAndConditionsModule() -> UIViewController {

            let view = TermsAndConditionsView ()
            let presenter: TermsAndConditionsPresenterProtocol & TermsAndConditionsInteractorOutputProtocol = TermsAndConditionsPresenter()
            let interactor: TermsAndConditionsInteractorInputProtocol = TermsAndConditionsInteractor()
//            let router: TermsAndConditionsRouterProtocol = TermsAndConditionsRouter()
            let router: TermsAndConditionsRouterProtocol = TermsAndConditionsRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
  
  
  func close() {
    guard let coor = coordinator as? AppCoordinator else { return }
    coor.dissMiss()
  }
    
   
    
}
