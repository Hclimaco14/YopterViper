//
//  MapsView.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//

import UIKit

class MapsView: YopterBaseVc {
    // MARK: Outlets
  @IBOutlet var mapLbl: UILabel!
  
    // MARK: Properties
    var presenter: MapsPresenterProtocol?
    var delegate: OffertUpdateProtocol?
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  @IBAction func updateOffertAction(_ sender: Any) {
    delegate?.offertByMap(sender: "Offer by map")
  }
  
}

extension MapsView: MapsViewProtocol {
    // TODO: implement view output methods
}

extension MapsView: MapsUpdateProtocol {
  func mapByOffert(sender: Any) {
    self.tabBarController?.selectedIndex = TypeViewController.maps.rawValue
    mapLbl.text = sender as? String ?? ""
  }
  
  
}
