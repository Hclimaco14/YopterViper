//
//  StyleButton.swift
//  Yopter
//
//  Created by Hector Climaco on 09/02/21.
//

import UIKit
internal struct StyleButton {
  fileprivate let applyTo: (UIButton) -> Void
  
  
  static var vycoButton: StyleButton {
    return StyleButton { button in
      button.apply(styles: .purpleGradient, .cornerMid)
      button.apply(styles:  .font(.Roboto_Medium15), .color(.colorWhite))
    }
  }
  
  static func color(_ color: UIColor) -> StyleButton {
    return StyleButton { button in
      button.setTitleColor(color, for: .normal)
    }
  }
  
  static func font(_ font: UIFont) -> StyleButton{
    return StyleButton { button in
      button.titleLabel?.font = font
    }
  }
}

extension UIButton {
  func apply(styles: StyleButton...) {
    styles.forEach{ $0.applyTo(self) }
  }
  
}
