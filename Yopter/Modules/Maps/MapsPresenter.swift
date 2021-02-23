//
//  MapsPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation

class MapsPresenter  {
    
    // MARK: Properties
    weak var view: MapsViewProtocol?
    var interactor: MapsInteractorInputProtocol?
    var router: MapsRouterProtocol?
    
}

extension MapsPresenter: MapsPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension MapsPresenter: MapsInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
