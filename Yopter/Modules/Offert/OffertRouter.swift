//
//  OffertRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//  
//

import Foundation
import UIKit

class OffertRouter: OffertRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createOffertModule(coordinator:Coordinator? = nil) -> OffertView {

            let view = OffertView ()
            let presenter: OffertPresenterProtocol & OffertInteractorOutputProtocol = OffertPresenter()
            let interactor: OffertInteractorInputProtocol = OffertInteractor()
            let router: OffertRouterProtocol = OffertRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
  
  
  func goToDetail() {
    if let coord = coordinator as? AppCoordinator {
      coord.goToDetail()
      print("Go to detail")
    }
  }
    
   
    
}
