//
//  WebViewProtocols.swift
//  Yopter
//
//  Created by Hector Climaco on 10/02/21.
//  
//

import Foundation
import UIKit

protocol WebViewViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: WebViewPresenterProtocol? { get set }
}

protocol WebViewRouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createWebViewModule(coordinator:Coordinator?) -> WebViewView
//    static func createWebViewModule() -> UIViewController
}

protocol WebViewPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: WebViewViewProtocol? { get set }
    var interactor: WebViewInteractorInputProtocol? { get set }
    var router: WebViewRouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol WebViewInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol WebViewInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: WebViewInteractorOutputProtocol? { get set }
}
