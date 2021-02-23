//
//  WebViewPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 10/02/21.
//  
//

import Foundation

class WebViewPresenter  {
    
    // MARK: Properties
    weak var view: WebViewViewProtocol?
    var interactor: WebViewInteractorInputProtocol?
    var router: WebViewRouterProtocol?
    
}

extension WebViewPresenter: WebViewPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension WebViewPresenter: WebViewInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
