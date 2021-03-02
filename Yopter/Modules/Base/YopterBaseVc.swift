//
//  YopterBaseVc.swift
//  Yopter
//
//  Created by Hector Climaco on 10/02/21.
//

import UIKit

class YopterBaseVc: UIViewController {
  @IBOutlet weak var backgroundSV: UIScrollView!
  
  var isNavigationBarHidden: Bool = false
  
  /*override func viewDidLoad() {
   super.viewDidLoad()
   configureView()
   setNavigationView()
   hideKeyboardWhenTappedAround()
   
   // Do any additional setup after loading the view.
   }*/
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
    setNavigationView()
    hideKeyboardWhenTappedAround()
    subscribeToNotification(UIResponder.keyboardWillShowNotification, selector: #selector(keyboardWillShowOrHide))
    subscribeToNotification(UIResponder.keyboardWillHideNotification, selector: #selector(keyboardWillShowOrHide))
    
    initializeHideKeyboard()
    
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    unsubscribeFromAllNotifications()
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


private extension YopterBaseVc {
  
  func initializeHideKeyboard(){
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(
      target: self,
      action: #selector(dismissMyKeyboard))
    
    view.addGestureRecognizer(tap)
  }
  
  @objc func dismissMyKeyboard(){
    view.endEditing(true)
  }
}

// MARK: Textfield Visibility Handling with Scroll

private extension YopterBaseVc {
  
  func subscribeToNotification(_ notification: NSNotification.Name, selector: Selector) {
    NotificationCenter.default.addObserver(self, selector: selector, name: notification, object: nil)
  }
  
  func unsubscribeFromAllNotifications() {
    NotificationCenter.default.removeObserver(self)
  }
  
  @objc func keyboardWillShowOrHide(notification: NSNotification) {
    if let scrollView = backgroundSV, let userInfo = notification.userInfo, let endValue = userInfo[UIResponder.keyboardFrameEndUserInfoKey], let durationValue = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey], let curveValue = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] {
      
      let endRect = view.convert((endValue as AnyObject).cgRectValue, from: view.window)
      let keyboardOverlap = scrollView.frame.maxY - endRect.origin.y
      scrollView.contentInset.bottom = keyboardOverlap
      scrollView.scrollIndicatorInsets.bottom = keyboardOverlap
      
      let duration = (durationValue as AnyObject).doubleValue
      let options = UIView.AnimationOptions(rawValue: UInt((curveValue as AnyObject).integerValue << 16))
      UIView.animate(withDuration: duration!, delay: 0, options: options, animations: {
        self.view.layoutIfNeeded()
      }, completion: nil)
    }
  }
  
}
