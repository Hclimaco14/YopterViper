//
//  DetailRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//  
//

import Foundation
import UIKit

class DetailRouter: DetailRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createDetailModule(coordinator:Coordinator? = nil) -> DetailView {
//    class func createDetailModule() -> UIViewController {

            let view = DetailView ()
            let presenter: DetailPresenterProtocol & DetailInteractorOutputProtocol = DetailPresenter()
            let interactor: DetailInteractorInputProtocol = DetailInteractor()
//            let router: DetailRouterProtocol = DetailRouter()
            let router: DetailRouterProtocol = DetailRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
   
    
}
