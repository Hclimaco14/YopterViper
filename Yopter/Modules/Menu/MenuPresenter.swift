//
//  MenuPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation

class MenuPresenter  {
    
    // MARK: Properties
    weak var view: MenuViewProtocol?
    var interactor: MenuInteractorInputProtocol?
    var router: MenuRouterProtocol?
    
}

extension MenuPresenter: MenuPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
  
  func goToHome(view:MenuView) {
    router?.goToHome(view:view)
  }
}

extension MenuPresenter: MenuInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
