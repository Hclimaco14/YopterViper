//
//  Coordinator.swift
//  Yopter
//
//  Created by Hector Climaco on 30/01/21.
//


import UIKit

protocol Coordinator:AnyObject {
    var navigationController:UINavigationController { get set }
    var childCoordinators:[Coordinator] { get set }
    func start()
}

