//
//  TutorialRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

class TutorialRouter: TutorialRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createTutorialModule(coordinator:Coordinator? = nil) -> TutorialView {
//    class func createTutorialModule() -> UIViewController {

            let view = TutorialView ()
            let presenter: TutorialPresenterProtocol & TutorialInteractorOutputProtocol = TutorialPresenter()
            let interactor: TutorialInteractorInputProtocol = TutorialInteractor()
//            let router: TutorialRouterProtocol = TutorialRouter()
            let router: TutorialRouterProtocol = TutorialRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
   
    
}
