//
//  OffertProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//  
//

import Foundation
import UIKit

protocol OffertViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: OffertPresenterProtocol? { get set }
}

protocol OffertRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createOffertModule(coordinator:Coordinator?) -> OffertView
    func goToDetail()
//    static func createOffertModule() -> UIViewController
}

protocol OffertPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: OffertViewProtocol? { get set }
    var interactor: OffertInteractorInputProtocol? { get set }
    var router: OffertRouterProtocol? { get set }
    
    func viewDidLoad()
    func goToDetail()
}

protocol OffertInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol OffertInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: OffertInteractorOutputProtocol? { get set }
}

protocol OffertUpdateProtocol {
  func offertByFilter(sender: Any)
  func offertByMap(sender:Any)
}
