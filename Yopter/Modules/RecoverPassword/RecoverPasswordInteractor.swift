//
//  RecoverPasswordInteractor.swift
//  Yopter
//
//  Created by Hector Climaco on 11/02/21.
//  
//

import Foundation

class RecoverPasswordInteractor: RecoverPasswordInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: RecoverPasswordInteractorOutputProtocol?
  
  func send(email: String) {
    print("Send email to: ", email)
  }

}
