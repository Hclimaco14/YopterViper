//
//  MenuView.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//

import UIKit

class MenuView: YopterBaseVc {

    // MARK: Properties
    var presenter: MenuPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  @IBAction func goToHome(_ sender: Any) {
      presenter?.goToHome(view: self)
  }
  
}

extension MenuView: MenuViewProtocol {
    // TODO: implement view output methods
}

