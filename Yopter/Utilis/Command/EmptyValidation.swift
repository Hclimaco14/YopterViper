//
//  EmptyValidation.swift
//  Tabla xcode 11
//
//  Created by Hector Climaco on 22/07/20.
//  Copyright © 2020 Hector Climaco. All rights reserved.
//

import Foundation

class EmptyValidation: Command {
    private var text:String?
    private var control:Any?
    private var completion:((_ evaluation:Bool,_ reason:String?,_ control:Any? ) ->Void)?
    
    /// Intializar for validation email
    /// - Parameters:
    ///   - text: text to evaluation
    ///   - completion: result to evaluation
    init(text:String?,control:Any? = nil,_ completion:((_ evaluation:Bool,_ reason:String?,_ control:Any?) ->Void)? = nil ) {
        self.text = text
        self.control = control
        self.completion = completion
    }
    
    func execute() {

        if let txt = text,!txt.isEmpty {
            completion?(true,nil,control)
        } else {
          completion?(false,"EMPTY_FIELDS".localized(),control)
        }
    }
}
