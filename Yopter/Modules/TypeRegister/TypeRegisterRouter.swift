//
//  TypeRegisterRouter.swift
//  Yopter
//
//  Created by Hector Climaco on 12/02/21.
//  
//

import Foundation
import UIKit

class TypeRegisterRouter: TypeRegisterRouterProtocol {
  
  fileprivate weak var coordinator:Coordinator?
  
  init(coordinator:Coordinator?) {
    self.coordinator = coordinator
  }
  
  
  class func createTypeRegisterModule(coordinator:Coordinator? = nil) -> TypeRegisterView {
    //    class func createTypeRegisterModule() -> UIViewController {
    
    let view = TypeRegisterView ()
    let presenter: TypeRegisterPresenterProtocol & TypeRegisterInteractorOutputProtocol = TypeRegisterPresenter()
    let interactor: TypeRegisterInteractorInputProtocol = TypeRegisterInteractor()
    //            let router: TypeRegisterRouterProtocol = TypeRegisterRouter()
    let router: TypeRegisterRouterProtocol = TypeRegisterRouter(coordinator:coordinator)
    
    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.interactor = interactor
    interactor.presenter = presenter
    
    return view
    
  }
  
  func goToRegister(type: typeRegister) {
    guard let coor = coordinator as? AppCoordinator else { return }
    coor.goToRegister(type: type)
  }
  
  func close() {
    guard let coor = coordinator as? AppCoordinator else { return }
    coor.dissMiss()
  }
  
  
  
  
}
