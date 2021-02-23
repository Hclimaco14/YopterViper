//
//  TermsAndConditionsPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 09/02/21.
//  
//

import Foundation

class TermsAndConditionsPresenter  {
    
    // MARK: Properties
    weak var view: TermsAndConditionsViewProtocol?
    var interactor: TermsAndConditionsInteractorInputProtocol?
    var router: TermsAndConditionsRouterProtocol?
    
}

extension TermsAndConditionsPresenter: TermsAndConditionsPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
  
  func close() {
    router?.close()
  }
}

extension TermsAndConditionsPresenter: TermsAndConditionsInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
