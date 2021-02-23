//
//  TutorialPresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation

class TutorialPresenter  {
    
    // MARK: Properties
    weak var view: TutorialViewProtocol?
    var interactor: TutorialInteractorInputProtocol?
    var router: TutorialRouterProtocol?
    
}

extension TutorialPresenter: TutorialPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension TutorialPresenter: TutorialInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
