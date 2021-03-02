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
  private let validation = TextInvoker()
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
    emailTxtF.apply(styles: .keyBoardEmail)
    emailTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    //Password label
    passwordLbl.text = "PASSWORD_LOGIN".localized()
    passwordLbl.apply(styles: .font(.Roboto_Medium15), .color(.black))
    
    //Password textfield
    passwordTxtF.apply(styles: .vycoTextFieldAlpha)
    passwordTxtF.apply(styles: .password)
    passwordTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
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
  
  func validationFields() -> String? {
    var passValidation:String?
    
    let completionValidation:((Bool,String?,Any?) ->()) = { (resultEval,reason,control) in
      if resultEval == false {
        passValidation = reason
        if let controlText = control as? UITextField {
          controlText.apply(styles: .borderError)
        }
      }
    }
    
    validation.addValidation(command: EmailValidation(text: emailTxtF.text, control: emailTxtF, completionValidation))
    
    validation.addValidation(command: EmptyValidation(text: emailTxtF.text, control: emailTxtF, completionValidation))
    validation.addValidation(command: EmptyValidation(text: passwordTxtF.text, control: passwordTxtF, completionValidation))
    
    validation.executeValidation()
    
    return passValidation
  }
  
  @IBAction func enterAction(_ sender: Any) {
    if let error = validationFields() {
      
      let alert = UIAlertController(title: "ALERT_ERROR".localized(), message: error, preferredStyle: .alert)
      let action = UIAlertAction(title: "ALERT_ACEPT".localized(), style: .destructive, handler: nil)
      
      alert.addAction(action)
      self.present(alert, animated: true, completion: nil)
      
    } else {
      presenter?.goToHome()
    }
  }
  
  
  @objc func textfieldChange(_ textField:UITextField) {
    textField.apply(styles: .vycoTextFieldBorder)
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

