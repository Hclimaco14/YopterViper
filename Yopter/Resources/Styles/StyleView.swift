//
//  StyleView.swift
//  Yopter
//
//  Created by Hector Climaco on 09/02/21.
//

import UIKit

//MARK: StyleView
internal struct StyleView {
    fileprivate let applyTo: (UIView) -> Void
    
    static var cornerMid: StyleView {
        return StyleView { view in
            view.layer.cornerRadius = (view.frame.height / 2)
            view.clipsToBounds = true
        }
    }
    
  static var purpleGradient: StyleView {
    return StyleView { view in
      view.applyGradient(colours: [UIColor.grapePurple, UIColor.darkHotPink])
    }
  }
  
  static var coorner10:StyleView {
    return StyleView { view in
      view.layer.cornerRadius = 10
      view.layer.masksToBounds = true
    }
  }
  
  static var border2:StyleView {
    return StyleView { view in
      view.layer.borderColor = UIColor.white.cgColor
      view.layer.borderWidth = 2
    }
  }
  
  static func color(_ color: UIColor) -> StyleView {
    return StyleView { view in
      view.backgroundColor = color
    }
  }
  
}

extension UIView {
    func apply(styles: StyleView...) {
        styles.forEach { $0.applyTo(self) }
    }
}
