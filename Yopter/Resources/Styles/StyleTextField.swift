//
//  StyleTextField.swift
//  Yopter
//
//  Created by Hector Climaco on 17/02/21.
//

import UIKit


internal struct StyleTextField {
  fileprivate let applyTo: (UITextField) -> Void
  
  static var vycoTextFieldAlpha: StyleTextField {
    return StyleTextField { textField in
      textField.apply(styles: .cornerMid, .color(UIColor.colorWhite.withAlphaComponent(0.8)))
    }
  }
  
  static var vycoTextFieldBorder: StyleTextField {
    return StyleTextField { textField in
      textField.apply(styles: .cornerMid,.border2)
    }
  }
  
}


extension UITextField {
  func apply(styles: StyleTextField...) {
    styles.forEach{ $0.applyTo(self) }
  }
  
}
