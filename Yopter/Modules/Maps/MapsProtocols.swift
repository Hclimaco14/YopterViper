//
//  MapsProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

protocol MapsViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: MapsPresenterProtocol? { get set }
}

protocol MapsRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createMapsModule(coordinator:Coordinator?) -> MapsView
//    static func createMapsModule() -> UIViewController
}

protocol MapsPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: MapsViewProtocol? { get set }
    var interactor: MapsInteractorInputProtocol? { get set }
    var router: MapsRouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol MapsInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol MapsInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: MapsInteractorOutputProtocol? { get set }
}

protocol MapsUpdateProtocol {
  func mapByOffert(sender: Any) 
}
