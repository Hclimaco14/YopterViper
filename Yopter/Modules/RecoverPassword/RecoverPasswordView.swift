//
//  RecoverPasswordView.swift
//  Yopter
//
//  Created by Hector Climaco on 11/02/21.
//

import UIKit

class RecoverPasswordView: YopterBaseVc {
  //MARK: Outlets
  @IBOutlet var contentView: UIView!
  @IBOutlet var titleRecoverPasswordLbl: UILabel!
  @IBOutlet var bodyRecovberpasswordLbl: UILabel!
  @IBOutlet var emailLbl: UILabel!
  @IBOutlet var emailTxtF: UITextField!
  @IBOutlet var sendBtn: UIButton!
  
  
  // MARK: Properties
  var presenter: RecoverPasswordPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func configureView() {
    self.view.apply(styles: .color(.cloudyBlue))
    
    self.contentView.apply(styles: .coorner10,.border2, .color(UIColor.colorWhite.withAlphaComponent(0.7)))
    
    self.titleRecoverPasswordLbl.text = "TITLE_RECOVER_PASSWORD".localized()
    self.titleRecoverPasswordLbl.apply(styles: .font(.Roboto_Bold20), .color(.black))
    
    self.bodyRecovberpasswordLbl.text = "BODY_RECOVER_PASSWORD".localized()
    self.bodyRecovberpasswordLbl.apply(styles: .font(.Roboto_Medium15), .color(.brownGrey))
    
    self.emailLbl.text = "EMAIL_RECOVER_PASSWORD".localized()
    self.emailLbl.apply(styles: .font(.Roboto_Medium15), .color(.black))
    
    self.emailTxtF.apply(styles: .cornerMid)
  
    self.sendBtn.setTitle("SEND_RECOVER_PASSWORD".localized(), for: .normal)
    self.sendBtn.apply(styles: .cornerMid, .purpleGradient)
    self.sendBtn.apply(styles: StyleButton.color(.colorWhite),.font(.Roboto_Medium15))
  }
  
  @IBAction func closeAction(_ sender: Any) {
    presenter?.close()
  }
  
  @IBAction func sendAction(_ sender: Any) {
    let email = emailTxtF.text ?? ""
    presenter?.send(email: email)
  }
  
  
}

extension RecoverPasswordView: RecoverPasswordViewProtocol {
  // TODO: implement view output methods
}

