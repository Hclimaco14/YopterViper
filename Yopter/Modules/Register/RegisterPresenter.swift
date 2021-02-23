//
//  RegisterPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation

class RegisterPresenter  {
    
    // MARK: Properties
    weak var view: RegisterViewProtocol?
    var interactor: RegisterInteractorInputProtocol?
    var router: RegisterRouterProtocol?
    
}

extension RegisterPresenter: RegisterPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension RegisterPresenter: RegisterInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
