//
//  TypeRegisterProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 12/02/21.
//  
//

import Foundation
import UIKit

protocol TypeRegisterViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: TypeRegisterPresenterProtocol? { get set }
}

protocol TypeRegisterRouterProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createTypeRegisterModule(coordinator:Coordinator?) -> TypeRegisterView
  func goToRegister(type: typeRegister)
  func close()
}

protocol TypeRegisterPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: TypeRegisterViewProtocol? { get set }
  var interactor: TypeRegisterInteractorInputProtocol? { get set }
  var router: TypeRegisterRouterProtocol? { get set }
  
  func viewDidLoad()
  func goToRegister(type: typeRegister)
  func close()
}

protocol TypeRegisterInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol TypeRegisterInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: TypeRegisterInteractorOutputProtocol? { get set }
}
