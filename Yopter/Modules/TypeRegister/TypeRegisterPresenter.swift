//
//  TypeRegisterPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 12/02/21.
//  
//

import Foundation

class TypeRegisterPresenter  {
  
  // MARK: Properties
  weak var view: TypeRegisterViewProtocol?
  var interactor: TypeRegisterInteractorInputProtocol?
  var router: TypeRegisterRouterProtocol?
  
}

extension TypeRegisterPresenter: TypeRegisterPresenterProtocol {
  
  // TODO: implement presenter methods
  func viewDidLoad() {
  }
  
  func goToRegister(type: typeRegister) {
    router?.goToRegister(type: type)
  }
  
  
  func close() {
    router?.close()
  }
}

extension TypeRegisterPresenter: TypeRegisterInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
