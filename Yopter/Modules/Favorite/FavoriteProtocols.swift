//
//  FavoriteProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

protocol FavoriteViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: FavoritePresenterProtocol? { get set }
}

protocol FavoriteRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createFavoriteModule(coordinator:Coordinator?) -> FavoriteView
  func goToDetail()
//    static func createFavoriteModule() -> UIViewController
}

protocol FavoritePresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: FavoriteViewProtocol? { get set }
    var interactor: FavoriteInteractorInputProtocol? { get set }
    var router: FavoriteRouterProtocol? { get set }
    
    func viewDidLoad()
    func goToDetail()
}

protocol FavoriteInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol FavoriteInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: FavoriteInteractorOutputProtocol? { get set }
}
