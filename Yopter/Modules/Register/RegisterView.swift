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
    numEmployeeLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    numEmployeeTxtF.apply(styles: .vycoTextFieldBorder)
    
    birthDayLbl.text = "BIRTHDAY_REGISTER".localized()
    birthDayLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    birthDayTxtF.apply(styles: .vycoTextFieldBorder)
    
    genderLbl.text = "GENDER_REGISTER".localized()
    genderLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    genderTxtF.apply(styles: .vycoTextFieldBorder)
    
    emailLbl.text = "EMAIL_ REGISTER".localized()
    emailLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    emailTxtF.apply(styles: .vycoTextFieldBorder)
    
    confirmEmailLbl.text = "CONFIRM_EMAIL_REGISTER".localized()
    confirmEmailLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    confirmEmailTxtF.apply(styles: .vycoTextFieldBorder)
    
    passwordLbl.text = "PASSWORD_REGISTER".localized()
    passwordLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    passwordTxtF.apply(styles: .vycoTextFieldBorder)
    
    confirmPasswordLbl.text = "CONFIRM_PASSWORD_REGISTER".localized()
    confirmPasswordLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    confirmPasswordTxtF.apply(styles: .vycoTextFieldBorder)
    
    createAccountDescriptionLbl.text = "CREATE_ACCOUNT_DESCRIPTION_REGISTER".localized()
    createAccountDescriptionLbl.apply(styles: .font(.Roboto_Light15), .color(.warmGreyThree))
    
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
}

extension RegisterView: RegisterViewProtocol {
  // TODO: implement view output methods
}

