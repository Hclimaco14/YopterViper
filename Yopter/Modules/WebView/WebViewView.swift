//
//  WebViewView.swift
//  Yopter
//
//  Created by Hector Climaco on 10/02/21.
//

import UIKit

class WebViewView: YopterBaseVc {

    // MARK: Properties
    var presenter: WebViewPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension WebViewView: WebViewViewProtocol {
    // TODO: implement view output methods
}

