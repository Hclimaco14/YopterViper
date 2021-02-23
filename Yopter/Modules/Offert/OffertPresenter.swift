//
//  OffertPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//  
//

import Foundation

class OffertPresenter  {
    
    // MARK: Properties
    weak var view: OffertViewProtocol?
    var interactor: OffertInteractorInputProtocol?
    var router: OffertRouterProtocol?
    
}

extension OffertPresenter: OffertPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
  
    func goToDetail() {
      router?.goToDetail()
    }
}

extension OffertPresenter: OffertInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
