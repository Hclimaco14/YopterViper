//
//  FavoriteRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

class FavoriteRouter: FavoriteRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createFavoriteModule(coordinator:Coordinator? = nil) -> FavoriteView {
//    class func createFavoriteModule() -> UIViewController {

            let view = FavoriteView ()
            let presenter: FavoritePresenterProtocol & FavoriteInteractorOutputProtocol = FavoritePresenter()
            let interactor: FavoriteInteractorInputProtocol = FavoriteInteractor()
//            let router: FavoriteRouterProtocol = FavoriteRouter()
            let router: FavoriteRouterProtocol = FavoriteRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
  
  func goToDetail() {
    if let coor = coordinator as? AppCoordinator {
      coor.goToDetail()
    }
  }
   
    
}
