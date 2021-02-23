//
//  LoginPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation

class LoginPresenter  {
  
  // MARK: Properties
  weak var view: LoginViewProtocol?
  var interactor: LoginInteractorInputProtocol?
  var router: LoginRouterProtocol?
  
}

extension LoginPresenter: LoginPresenterProtocol {
  // TODO: implement presenter methods
  func viewDidLoad() {
  }
  
  func goToHome() {
    router?.goToHome()
  }
  
  func goToRegister() {
    router?.goToRegister()
  }
  
  func goToRecoverPassword() {
    router?.goToRecoverPassword()
  }
  
}

extension LoginPresenter: LoginInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
