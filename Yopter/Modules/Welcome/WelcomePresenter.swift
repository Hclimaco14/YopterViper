//
//  WelcomePresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 08/02/21.
//  
//

import Foundation

class WelcomePresenter  {
  
  // MARK: Properties
  weak var view: WelcomeViewProtocol?
  var interactor: WelcomeInteractorInputProtocol?
  var router: WelcomeRouterProtocol?
  
}

extension WelcomePresenter: WelcomePresenterProtocol {
  
  // TODO: implement presenter methods
  func viewDidLoad() {
  }
  
  func goToRegister() {
    router?.goToRegister()
  }
  
  func goToLogin() {
    router?.goToLogin()
  }
  
  func goToTermsAndConditions() {
    router?.goToTermsAndConditions()
  }
}

extension WelcomePresenter: WelcomeInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
