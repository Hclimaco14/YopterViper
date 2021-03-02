//
//  RegisterView.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//

import UIKit

class RegisterView: YopterBaseVc {
  
  //MARK: Outlets
  @IBOutlet var contentView: UIView!
  
  @IBOutlet var titleView: TitleView!
  
  @IBOutlet var numEmployeeStackView: UIStackView!
  @IBOutlet var numEmployeeLbl: UILabel!
  @IBOutlet var numEmployeeTxtF: UITextField!
  
  @IBOutlet var birthDayStackView: UIStackView!
  @IBOutlet var birthDayLbl: UILabel!
  @IBOutlet var birthDayTxtF: UITextField!
  
  @IBOutlet var genderStackView: UIStackView!
  @IBOutlet var genderLbl: UILabel!
  @IBOutlet var genderTxtF: UITextField!
  
  @IBOutlet var emailStackView: UIStackView!
  @IBOutlet var emailLbl: UILabel!
  @IBOutlet var emailTxtF: UITextField!
  
  @IBOutlet var confirmEmailStackView: UIStackView!
  @IBOutlet var confirmEmailLbl: UILabel!
  @IBOutlet var confirmEmailTxtF: UITextField!
  
  @IBOutlet var passwordStackView: UIStackView!
  @IBOutlet var passwordLbl: UILabel!
  @IBOutlet var passwordTxtF: UITextField!
  
  @IBOutlet var confirmPasswordStackView: UIStackView!
  @IBOutlet var confirmPasswordLbl: UILabel!
  @IBOutlet var confirmPasswordTxtF: UITextField!
  
  @IBOutlet var createAccountDescriptionLbl: UILabel!
  @IBOutlet var createAccountBtn: UIButton!
  
  @IBOutlet var recoveryPasswordLbl: UILabel!
  @IBOutlet var loginLbl: UILabel!
  
  // MARK: Properties
  var presenter: RegisterPresenterProtocol?
  public var typeRegister: typeRegister = .candidate
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func configureView() {
    titleView.titleLbl.text = "TITLE_REGISTER".localized()
    
    numEmployeeLbl.text = "NUM_EMPLOYEE_REGISTER".localized()
    numEmployeeLbl.apply(styles: .vycoRegister)
    numEmployeeTxtF.apply(styles: .vycoTextFieldBorder)
    numEmployeeTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    birthDayLbl.text = "BIRTHDAY_REGISTER".localized()
    birthDayLbl.apply(styles: .vycoRegister)
    birthDayTxtF.apply(styles: .vycoTextFieldBorder)
    birthDayTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    genderLbl.text = "GENDER_REGISTER".localized()
    genderLbl.apply(styles: .vycoRegister)
    genderTxtF.apply(styles: .vycoTextFieldBorder)
    genderTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    emailLbl.text = "EMAIL_ REGISTER".localized()
    emailLbl.apply(styles: .vycoRegister)
    emailTxtF.apply(styles: .vycoTextFieldBorder)
    emailTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    confirmEmailLbl.text = "CONFIRM_EMAIL_REGISTER".localized()
    confirmEmailLbl.apply(styles: .vycoRegister)
    confirmEmailTxtF.apply(styles: .vycoTextFieldBorder)
    confirmEmailTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    passwordLbl.text = "PASSWORD_REGISTER".localized()
    passwordLbl.apply(styles: .vycoRegister)
    passwordTxtF.apply(styles: .vycoTextFieldBorder)
    passwordTxtF.apply(styles: .password)
    passwordTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    confirmPasswordLbl.text = "CONFIRM_PASSWORD_REGISTER".localized()
    confirmPasswordLbl.apply(styles: .vycoRegister)
    confirmPasswordTxtF.apply(styles: .vycoTextFieldBorder)
    confirmPasswordTxtF.apply(styles: .password)
    confirmPasswordTxtF.addTarget(self, action: #selector(self.textfieldChange), for: .editingChanged)
    
    createAccountDescriptionLbl.text = "CREATE_ACCOUNT_DESCRIPTION_REGISTER".localized()
    createAccountDescriptionLbl.apply(styles: .vycoRegister)
    
    createAccountBtn.setTitle("CREATE_ACCOUNT_REGISTER".localized(), for: .normal)
    createAccountBtn.apply(styles: .vycoButton)
    
    recoveryPasswordLbl.text = "RECOVER_PASSWORD_REGISTER".localized()
    recoveryPasswordLbl.apply(styles: .font(.Roboto_Bold12), .color(.black), .underline)
    
    loginLbl.text = "LOGIN_REGISTER".localized()
    loginLbl.apply(styles: .font(.Roboto_Bold12), .color(.black), .underline)
    
    self.view.apply(styles: .color(.systemLightGrey))
    self.typeRegister(type: typeRegister)
    
  }
  
  private func typeRegister(type: typeRegister) {
    switch type {
      case .candidate:
        numEmployeeStackView.isHidden = true
        birthDayStackView.isHidden = true
        genderStackView.isHidden = true
        break
      case .collaborator:
        break
    }
  }
  
  func validationFields() -> String? {
    let validation = TextInvoker()
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
    validation.addValidation(command: EmailValidation(text: confirmEmailTxtF.text, control: confirmEmailTxtF, completionValidation))
    
    if typeRegister == .collaborator {
      validation.addValidation(command: EmptyValidation(text: numEmployeeTxtF.text, control: numEmployeeTxtF, completionValidation))
      validation.addValidation(command: EmptyValidation(text: birthDayTxtF.text, control: birthDayTxtF, completionValidation))
      validation.addValidation(command: EmptyValidation(text: genderTxtF.text, control: genderTxtF, completionValidation))
    }
    
    validation.addValidation(command: EmptyValidation(text: emailTxtF.text, control: emailTxtF, completionValidation))
    validation.addValidation(command: EmptyValidation(text: confirmEmailTxtF.text, control: confirmEmailTxtF, completionValidation))
    validation.addValidation(command: EmptyValidation(text: passwordTxtF.text, control: passwordTxtF, completionValidation))
    validation.addValidation(command: EmptyValidation(text: confirmPasswordTxtF.text, control: confirmPasswordTxtF, completionValidation))
    
    validation.executeValidation()
    
    return passValidation
  }
  
  @IBAction func createAccountAction(_ sender: Any) {
    if let error = validationFields() {
      let alert = UIAlertController(title: "ALERT_ERROR".localized(), message: error, preferredStyle: .alert)
      let action = UIAlertAction(title: "ALERT_ACEPT".localized(), style: .destructive, handler: nil)
      
      alert.addAction(action)
      self.present(alert, animated: true, completion: nil)
    }
  }
  
  @objc func textfieldChange(_ textField:UITextField) {
    textField.apply(styles: .vycoTextFieldBorder)
  }
  
}

extension RegisterView: RegisterViewProtocol {
  // TODO: implement view output methods
}

