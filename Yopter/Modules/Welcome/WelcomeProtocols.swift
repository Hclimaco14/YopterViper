//
//  WelcomeProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 08/02/21.
//  
//

import Foundation
import UIKit

protocol WelcomeViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: WelcomePresenterProtocol? { get set }
}

protocol WelcomeRouterProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createWelcomeModule(coordinator:Coordinator?) -> WelcomeView
  func goToRegister()
  func goToLogin()
  func goToTermsAndConditions()
}

protocol WelcomePresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: WelcomeViewProtocol? { get set }
  var interactor: WelcomeInteractorInputProtocol? { get set }
  var router: WelcomeRouterProtocol? { get set }
  
  func viewDidLoad()
  func goToRegister()
  func goToLogin()
  func goToTermsAndConditions()
}

protocol WelcomeInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol WelcomeInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: WelcomeInteractorOutputProtocol? { get set }
}
