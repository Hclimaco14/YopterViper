//
//  OffertView.swift
//  Yopter
//
//  Created by Hector Climaco on 04/02/21.
//

import UIKit

class OffertView: YopterBaseVc {
  
    //MARK: Outlets
  @IBOutlet var titleView: TitleView!
  

    // MARK: Properties
    public var delegate: MapsUpdateProtocol?
    var presenter: OffertPresenterProtocol?
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  override func configureView() {
    titleView.titleLbl.text = "TITLE_OFFERTS".localized()
  }
  
  @IBAction func updateMapsAction(_ sender: Any) {
    
    delegate?.mapByOffert(sender: "Map by offert")
  }
  
  @IBAction func showDetailAction(_ sender: Any) {
    presenter?.goToDetail()
  }
  
  
}

extension OffertView: OffertViewProtocol {
    // TODO: implement view output methods
}


extension OffertView: OffertUpdateProtocol {
  func offertByFilter(sender: Any) {
    
  }
  
  func offertByMap(sender: Any) {
   
  }
  
  
}
