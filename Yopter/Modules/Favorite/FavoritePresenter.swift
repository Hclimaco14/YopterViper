//
//  FavoritePresenter.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//  
//

import Foundation

class FavoritePresenter  {
    
    // MARK: Properties
    weak var view: FavoriteViewProtocol?
    var interactor: FavoriteInteractorInputProtocol?
    var router: FavoriteRouterProtocol?
    
}

extension FavoritePresenter: FavoritePresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
  func goToDetail() {
    router?.goToDetail()
  }
}

extension FavoritePresenter: FavoriteInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
