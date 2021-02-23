//
//  TitleView.swift
//  Yopter
//
//  Created by Hector Climaco on 16/02/21.
//

import UIKit

class TitleView: UIView {
  
  static let nibName = "TitleView"
  //MARK: Outlets
  @IBOutlet var contentView: UIView!
  @IBOutlet var titleLbl: UILabel!
  @IBOutlet var lineView: UIView!
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed(TitleView.nibName, owner: self, options: nil)
    addSubview(contentView)
    contentView.layer.masksToBounds = true
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    configureView()
  }
  
  func configureView() {
    self.titleLbl.apply(styles: .font(.Roboto_Medium12), .color(.black))
    self.lineView.apply(styles: .color(.lightGray))
  }
  
  func configure(_ view:UIView) {
    self.frame.size = view.frame.size
  }
  
}
