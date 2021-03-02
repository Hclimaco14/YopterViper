//
//  TextInvoker.swift
//  Tabla xcode 11
//
//  Created by Hector Climaco on 22/07/20.
//  Copyright © 2020 Hector Climaco. All rights reserved.
//

import Foundation

class TextInvoker {
    private var commandList:[Command] = []
    
    func addValidation(command:Command) {
        self.commandList.append(command)
    }
    
    func executeValidation() {
        commandList.forEach { $0.execute() }
        commandList.removeAll()
    }
}
