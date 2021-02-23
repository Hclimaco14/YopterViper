//
//  TutorialProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation
import UIKit

protocol TutorialViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: TutorialPresenterProtocol? { get set }
}

protocol TutorialRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createTutorialModule(coordinator:Coordinator?) -> TutorialView
//    static func createTutorialModule() -> UIViewController
}

protocol TutorialPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: TutorialViewProtocol? { get set }
    var interactor: TutorialInteractorInputProtocol? { get set }
    var router: TutorialRouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol TutorialInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol TutorialInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: TutorialInteractorOutputProtocol? { get set }
}
