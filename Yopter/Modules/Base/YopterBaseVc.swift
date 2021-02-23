//
//  YopterBaseVc.swift
//  Yopter
//
//  Created by Hector Climaco on 10/02/21.
//

import UIKit

class YopterBaseVc: UIViewController {
  
  var isNavigationBarHidden: Bool = false
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
    setNavigationView()
    // Do any additional setup after loading the view.
  }
  
  override func viewWillAppear(_ animated: Bool) {
    self.navigationController?.isNavigationBarHidden = self.isNavigationBarHidden
  }
  
  fileprivate func hideKeyboardWhenTappedAround() {
      let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboardAction))
      tap.cancelsTouchesInView = false
      view.addGestureRecognizer(tap)
  }
  
  func setNavigationView() {
    self.navigationItem.titleView = NavLogoView()
  }
  
  func configureView(){
    fatalError()
  }
  
  @objc func dismissKeyboardAction() {
      view.endEditing(true)
  }
}
