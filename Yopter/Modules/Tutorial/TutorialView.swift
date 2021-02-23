//
//  TutorialView.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//

import UIKit

class TutorialView: YopterBaseVc {

    // MARK: Properties
    var presenter: TutorialPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TutorialView: TutorialViewProtocol {
    // TODO: implement view output methods
}

