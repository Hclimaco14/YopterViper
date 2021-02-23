//
//  FilterPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//  
//

import Foundation

class FilterPresenter  {
    
    // MARK: Properties
    weak var view: FilterViewProtocol?
    var interactor: FilterInteractorInputProtocol?
    var router: FilterRouterProtocol?
    
}

extension FilterPresenter: FilterPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension FilterPresenter: FilterInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
