//
//  FilterView.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//

import UIKit

class FilterView: YopterBaseVc {

    // MARK: Properties
    var presenter: FilterPresenterProtocol?
    var delegate:OffertUpdateProtocol?
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  @IBAction func updateOfferAction(_ sender: Any) {
    
    delegate?.offertByFilter(sender: "Offer by Filter")
  }
  
}

extension FilterView: FilterViewProtocol {
    // TODO: implement view output methods
}

