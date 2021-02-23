//
//  RegisterProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

protocol RegisterViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: RegisterPresenterProtocol? { get set }
}

protocol RegisterRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createRegisterModule(coordinator:Coordinator?) -> RegisterView
//    static func createRegisterModule() -> UIViewController
}

protocol RegisterPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: RegisterViewProtocol? { get set }
    var interactor: RegisterInteractorInputProtocol? { get set }
    var router: RegisterRouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol RegisterInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol RegisterInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: RegisterInteractorOutputProtocol? { get set }
}
