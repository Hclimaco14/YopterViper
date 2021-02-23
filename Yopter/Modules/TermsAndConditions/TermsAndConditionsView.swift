//
//  TermsAndConditionsView.swift
//  Yopter
//
//  Created by Hector Climaco on 09/02/21.
//

import UIKit

class TermsAndConditionsView: YopterBaseVc {
  
  // MARK: Properties
  var presenter: TermsAndConditionsPresenterProtocol?
  
  @IBOutlet var contentView: UIView!
  @IBOutlet var titleLbl: UILabel!
  @IBOutlet var bodyLbl: UILabel!
  
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }
  
  override func configureView() {
    self.view.apply(styles: .color(.cloudyBlue))
    titleLbl.text = "TERMS_CONDITIONS_TITLE".localized()
    bodyLbl.text = "TERMS_CONDITIONS_AND_PRIVACY".localized()
    contentView.apply(styles: .coorner10, .border2, StyleView.color(UIColor.white.withAlphaComponent(0.7)) )
    
    titleLbl.apply(styles: StyleLabel.font(UIFont.Roboto_Bold20), StyleLabel.color(UIColor.brownGrey))
    bodyLbl.apply(styles: StyleLabel.font(UIFont.Roboto_Light15), StyleLabel.color(UIColor.brownGrey),StyleLabel.textAlignment(.justified))
  }
  
  @IBAction func closeAction(_ sender: Any) {
    presenter?.close()
  }
  
}

extension TermsAndConditionsView: TermsAndConditionsViewProtocol {
  // TODO: implement view output methods
}

