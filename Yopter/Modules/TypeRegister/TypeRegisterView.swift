//
//  TypeRegisterView.swift
//  Yopter
//
//  Created by Hector Climaco on 12/02/21.
//

import UIKit

class TypeRegisterView: YopterBaseVc {
  
  //collaborator
  //candidate
  
  @IBOutlet var candidateView: UIView!
  @IBOutlet var candidateIco: UIImageView!
  @IBOutlet var candidateLbl: UILabel!
  @IBOutlet var candidateDescriptionLbl: UILabel!
  
  
  
  @IBOutlet var collaboratorVIew: UIView!
  @IBOutlet var collaboratorIco: UIImageView!
  @IBOutlet var collaboratorLbl: UILabel!
  @IBOutlet var collaboratorDescriptionLbl: UILabel!
  
  // MARK: Properties
  var presenter: TypeRegisterPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.configureView()
  }
  
  override func configureView() {
    
    candidateLbl.text = "CANDIDATE_TYPE_REGISTER".localized()
    candidateLbl.apply(styles: .font(.Roboto_Regular15), .color(.colorWhite))
    candidateDescriptionLbl.text = "CANDIDATE_DESCRIPTION_TYPE_REGISTER".localized()
    candidateDescriptionLbl.apply(styles: .font(.Roboto_Medium15), .color(.black))
    
    collaboratorLbl.text = "COLLABORATOR_TYPE_REGISTER".localized()
    collaboratorLbl.apply(styles: .font(.Roboto_Regular15), .color(.colorWhite))
    collaboratorDescriptionLbl.text = "COLLABORATOR_DESCRIPTION_TYPE_REGISTER".localized()
    collaboratorDescriptionLbl.apply(styles: .font(.Roboto_Medium15), .color(.black))
    
    candidateView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToRegisterCandidateAction)))
    collaboratorVIew.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToRegisterCollaboratorAction)))
    
    DispatchQueue.main.async {
      
      self.candidateView.apply(styles: .coorner10,.purpleGradient)
      self.collaboratorVIew.apply(styles: .coorner10,.purpleGradient)
    
    }
  }
  
  @IBAction func closeAction(_ sender: Any) {
    presenter?.close()
  }
  
  @objc func goToRegisterCandidateAction() {
    presenter?.goToRegister(type: .candidate)
  }
  
  @objc func goToRegisterCollaboratorAction() {
    presenter?.goToRegister(type: .collaborator)
  }
  
  
  
}

extension TypeRegisterView: TypeRegisterViewProtocol {
  // TODO: implement view output methods
}

