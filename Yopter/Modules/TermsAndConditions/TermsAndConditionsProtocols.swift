//
//  TermsAndConditionsProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 09/02/21.
//  
//

import Foundation
import UIKit

protocol TermsAndConditionsViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: TermsAndConditionsPresenterProtocol? { get set }
}

protocol TermsAndConditionsRouterProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createTermsAndConditionsModule(coordinator:Coordinator?) -> TermsAndConditionsView
  func close()
}

protocol TermsAndConditionsPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: TermsAndConditionsViewProtocol? { get set }
  var interactor: TermsAndConditionsInteractorInputProtocol? { get set }
  var router: TermsAndConditionsRouterProtocol? { get set }
  
  func viewDidLoad()
  func close()
}

protocol TermsAndConditionsInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol TermsAndConditionsInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: TermsAndConditionsInteractorOutputProtocol? { get set }
}
