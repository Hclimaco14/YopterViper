//
//  FilterRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//  
//

import Foundation
import UIKit

class FilterRouter: FilterRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createFilterModule(coordinator:Coordinator? = nil) -> FilterView {
//    class func createFilterModule() -> UIViewController {

            let view = FilterView ()
            let presenter: FilterPresenterProtocol & FilterInteractorOutputProtocol = FilterPresenter()
            let interactor: FilterInteractorInputProtocol = FilterInteractor()
//            let router: FilterRouterProtocol = FilterRouter()
            let router: FilterRouterProtocol = FilterRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
   
    
}
