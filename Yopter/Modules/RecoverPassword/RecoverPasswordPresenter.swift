//
//  RecoverPasswordPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 11/02/21.
//  
//

import Foundation

class RecoverPasswordPresenter  {
  
  // MARK: Properties
  weak var view: RecoverPasswordViewProtocol?
  var interactor: RecoverPasswordInteractorInputProtocol?
  var router: RecoverPasswordRouterProtocol?
  
}

extension RecoverPasswordPresenter: RecoverPasswordPresenterProtocol {
  
  // TODO: implement presenter methods
  func viewDidLoad() {
  }
  
  func send(email: String) {
    
  }
  
  func close() {
    router?.close()
  }
}

extension RecoverPasswordPresenter: RecoverPasswordInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
