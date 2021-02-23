//
//  FavoriteView.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//

import UIKit

class FavoriteView: YopterBaseVc {

    // MARK: Properties
    var presenter: FavoritePresenterProtocol?
    var delegate: MapsUpdateProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  @IBAction func updateMapsAction(_ sender: Any) {
    delegate?.mapByOffert(sender: "Map by favorite")
  }
  
  @IBAction func goToDetailAction(_ sender: Any) {
    presenter?.goToDetail()
  }
  
}

extension FavoriteView: FavoriteViewProtocol {
    // TODO: implement view output methods
}

