//
//  WebViewRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 10/02/21.
//  
//

import Foundation
import UIKit

class WebViewRouter: WebViewRouterProtocol {

     fileprivate weak var coordinator:Coordinator?
      
      init(coordinator:Coordinator?) {
          self.coordinator = coordinator
      }


    class func createWebViewModule(coordinator:Coordinator? = nil) -> WebViewView {
//    class func createWebViewModule() -> UIViewController {

            let view = WebViewView ()
            let presenter: WebViewPresenterProtocol & WebViewInteractorOutputProtocol = WebViewPresenter()
            let interactor: WebViewInteractorInputProtocol = WebViewInteractor()
//            let router: WebViewRouterProtocol = WebViewRouter()
            let router: WebViewRouterProtocol = WebViewRouter(coordinator:coordinator)
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
       
    }
    
   
    
}
