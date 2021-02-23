//
//  MapsRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

class MapsRouter: MapsRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createMapsModule(coordinator:Coordinator? = nil) -> MapsView {
//    class func createMapsModule() -> UIViewController {

            let view = MapsView ()
            let presenter: MapsPresenterProtocol & MapsInteractorOutputProtocol = MapsPresenter()
            let interactor: MapsInteractorInputProtocol = MapsInteractor()
//            let router: MapsRouterProtocol = MapsRouter()
            let router: MapsRouterProtocol = MapsRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
   
    
}
