//
//  DetailView.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//

import UIKit

class DetailView: YopterBaseVc {

    // MARK: Properties
    var presenter: DetailPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DetailView: DetailViewProtocol {
    // TODO: implement view output methods
}

