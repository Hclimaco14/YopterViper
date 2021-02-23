//
//  WelcomeView.swift
//  Yopter
//
//  Created by Hector Climaco on 08/02/21.
//

import UIKit

class WelcomeView: YopterBaseVc {
  
  
  //MARK:Outlet
  @IBOutlet var titleLbl: UILabel!
  @IBOutlet var subtitleLbl: UILabel!
  
  @IBOutlet var loginBtn: UIButton!
  @IBOutlet var registerBtn: UIButton!
  
  @IBOutlet var accountLeftLbl: UILabel!
  @IBOutlet var accountRighttLbl: UILabel!
  
  @IBOutlet var termsAndConditionsLbl: UILabel!
  @IBOutlet var noticeOfPrivacyLbl: UILabel!
  
  
  // MARK: Properties
  var presenter: WelcomePresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    configureView()
    presenter?.viewDidLoad()
  }
  
  
  
  override func configureView() {
    
    //Title
    titleLbl.text = "TITLE_WELCOME".localized()
    titleLbl.apply(styles: StyleLabel.color(UIColor.colorWhite),StyleLabel.font(UIFont.Roboto_Black32),.shadow)
    //Subtitle
    subtitleLbl.text = "SUBTITLE_WELCOME".localized()
    subtitleLbl.apply(styles: StyleLabel.color(UIColor.colorWhite),StyleLabel.font(UIFont.Roboto_Medium17),.shadow)
    
    //Button Login
    loginBtn.setTitle("LOGIN".localized(), for: .normal)
    loginBtn.apply(styles: .cornerMid,.purpleGradient)
    loginBtn.apply(styles: StyleButton.color(UIColor.colorWhite),StyleButton.font(UIFont.Roboto_Medium15))
    
    //Button Register
    registerBtn.setTitle("SINGUP".localized(), for: .normal)
    registerBtn.apply(styles: .cornerMid,.purpleGradient)
    registerBtn.apply(styles: StyleButton.color(UIColor.colorWhite),StyleButton.font(UIFont.Roboto_Medium15))
    
    //Label Create Account
    accountLeftLbl.text = "ACCOUNT_LEFT".localized()
    accountLeftLbl.apply(styles: StyleLabel.color(UIColor.white),StyleLabel.font(UIFont.Roboto_Bold13))
    accountRighttLbl.text = "ACCOUNT_RIGHT".localized()
    accountRighttLbl.apply(styles:  StyleLabel.color(UIColor.white),StyleLabel.font(UIFont.Roboto_Regular13),.underline)
    
    termsAndConditionsLbl.text = "TERMS_AND_CONDITIONS".localized()
    termsAndConditionsLbl.apply(styles: StyleLabel.color(UIColor.white),StyleLabel.font(UIFont.Avenir_Medium12),.underline)
    noticeOfPrivacyLbl.text = "NOTICE_OF_PRIVACY".localized()
    noticeOfPrivacyLbl.apply(styles: StyleLabel.color(UIColor.white),StyleLabel.font(UIFont.Avenir_Medium12),.underline)
    
    accountRighttLbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.createAccountAction)))
    termsAndConditionsLbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.termsAndConditionAction)))
    noticeOfPrivacyLbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.termsAndConditionAction)))
  }
  
  @IBAction func loginAction(_ sender: Any) {
    presenter?.goToLogin()
  }
  
  @IBAction func registerAction(_ sender: Any) {
    presenter?.goToRegister()
  }
  
  
  @objc func createAccountAction() {
    presenter?.goToRegister()
  }
  
  @objc func termsAndConditionAction() {
    presenter?.goToTermsAndConditions()
  }
  
  
}

extension WelcomeView: WelcomeViewProtocol {
  // TODO: implement view output methods
}

