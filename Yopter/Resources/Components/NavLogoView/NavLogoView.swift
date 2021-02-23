//
//  NavLogoView.swift
//  Yopter
//
//  Created by Hector Climaco on 17/02/21.
//

import UIKit

class NavLogoView: UIView {
  
  static let nibName = "NavLogoView"
  //MARK: Outlets
  @IBOutlet var contentView: UIView!
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed(NavLogoView.nibName, owner: self, options: nil)
    addSubview(contentView)
    contentView.layer.masksToBounds = true
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
  }
  
  func configure(_ view:UIView) {
    self.frame.size = view.frame.size
  }
  
}
