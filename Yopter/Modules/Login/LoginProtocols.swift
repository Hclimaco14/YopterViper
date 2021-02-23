//
//  LoginProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

protocol LoginViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: LoginPresenterProtocol? { get set }
}

protocol LoginRouterProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createLoginModule(coordinator:Coordinator?) -> LoginView
  func goToHome()
  func goToRegister()
  func goToRecoverPassword()
  //    static func createLoginModule() -> UIViewController
}

protocol LoginPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: LoginViewProtocol? { get set }
  var interactor: LoginInteractorInputProtocol? { get set }
  var router: LoginRouterProtocol? { get set }
  
  func viewDidLoad()
  func goToHome()
  func goToRegister()
  func goToRecoverPassword()
}

protocol LoginInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol LoginInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: LoginInteractorOutputProtocol? { get set }
}
