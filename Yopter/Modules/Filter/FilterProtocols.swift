//
//  FilterProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//  
//

import Foundation
import UIKit

protocol FilterViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: FilterPresenterProtocol? { get set }
}

protocol FilterRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createFilterModule(coordinator:Coordinator?) -> FilterView
//    static func createFilterModule() -> UIViewController
}

protocol FilterPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: FilterViewProtocol? { get set }
    var interactor: FilterInteractorInputProtocol? { get set }
    var router: FilterRouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol FilterInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol FilterInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: FilterInteractorOutputProtocol? { get set }
}
