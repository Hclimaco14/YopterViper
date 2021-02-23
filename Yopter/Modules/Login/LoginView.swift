//
//  LoginView.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//

import UIKit

class LoginView: YopterBaseVc {
  
  //Outlets
  @IBOutlet var titleLbl: UILabel!
  
  @IBOutlet var heightTxtFContraint: NSLayoutConstraint!
  
  
  @IBOutlet var emailLbl: UILabel!
  @IBOutlet var emailTxtF: UITextField!
  
  @IBOutlet var passwordLbl: UILabel!
  @IBOutlet var passwordTxtF: UITextField!
  
  @IBOutlet var enterBtn: UIButton!
  
  @IBOutlet var recoverPasswordLbl: UILabel!
  @IBOutlet var createAccountLbl: UILabel!
  
  
  // MARK: Properties
  var presenter: LoginPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }
  
  override func configureView() {
    //Title label
    titleLbl.text = "TITLE_LOGIN".localized()
    titleLbl.apply(styles: .font(.Avenir_Heavy32), .color(.black))
    
    //Email label
    emailLbl.text = "EMAIL_LOGIN".localized()
    emailLbl.apply(styles: .font(.Roboto_Medium15), .color(.black))
    
    //Email textField
    emailTxtF.apply(styles: .vycoTextFieldAlpha)
    
    //Password label
    passwordLbl.text = "PASSWORD_LOGIN".localized()
    passwordLbl.apply(styles: .font(.Roboto_Medium15), .color(.black))
    
    //Password textfield
    passwordTxtF.apply(styles: .vycoTextFieldAlpha)
    
    //Enter button
    enterBtn.setTitle("ENTER_LOGIN".localized(), for: .normal)
    enterBtn.apply(styles:  .vycoButton)
    
    //Recovery password label
    recoverPasswordLbl.text = "RECOVER_PASSWORD_LOGIN".localized()
    recoverPasswordLbl.apply(styles: .underlineWhite)
    recoverPasswordLbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.recoveryPasswordAction)))
    
    //Create account label
    createAccountLbl.text = "CREATE_ACCOUNT".localized()
    createAccountLbl.apply(styles: .underlineWhite)
    createAccountLbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.createAccountAction)))
    
    
  }
  
  
  @IBAction func enterAction(_ sender: Any) {
    presenter?.goToHome()
  }
  
  
  @objc func createAccountAction() {
    presenter?.goToRegister()
  }
  
  @objc func recoveryPasswordAction() {
    presenter?.goToRecoverPassword()
  }
  
  

}




extension LoginView: LoginViewProtocol {
  // TODO: implement view output methods
}

