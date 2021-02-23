//
//  MenuProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

protocol MenuViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: MenuPresenterProtocol? { get set }
}

protocol MenuRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createMenuModule(coordinator:Coordinator?) -> MenuView
  func goToHome(view:MenuView)
//    static func createMenuModule() -> UIViewController
}

protocol MenuPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: MenuViewProtocol? { get set }
    var interactor: MenuInteractorInputProtocol? { get set }
    var router: MenuRouterProtocol? { get set }
    
    func viewDidLoad()
    func goToHome(view:MenuView)
}

protocol MenuInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol MenuInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: MenuInteractorOutputProtocol? { get set }
}


