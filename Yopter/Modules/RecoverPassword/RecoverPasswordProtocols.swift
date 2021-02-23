//
//  RecoverPasswordProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 11/02/21.
//  
//

import Foundation
import UIKit

protocol RecoverPasswordViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: RecoverPasswordPresenterProtocol? { get set }
}

protocol RecoverPasswordRouterProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createRecoverPasswordModule(coordinator:Coordinator?) -> RecoverPasswordView
  func close()
  //    static func createRecoverPasswordModule() -> UIViewController
}

protocol RecoverPasswordPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: RecoverPasswordViewProtocol? { get set }
  var interactor: RecoverPasswordInteractorInputProtocol? { get set }
  var router: RecoverPasswordRouterProtocol? { get set }
  
  func viewDidLoad()
  func close()
  func send(email: String)
  
}

protocol RecoverPasswordInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol RecoverPasswordInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: RecoverPasswordInteractorOutputProtocol? { get set }
  func send(email: String)
}
