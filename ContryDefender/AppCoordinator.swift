//
//  AppCoordinator.swift
//  ContryDefender
//
//  Created by Admin on 15/10/2023.
//

import Foundation
import UIKit

class AppCoordinator : Coordinator {
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        goToStart()
    }
    
    func goToStart(){
        let startCoordinator = StartCoordinator(navigationController: navigationController)
        children.removeAll()
        
        startCoordinator.parentCoordinator = self
        children.append(startCoordinator)
        
        startCoordinator.start()
    }
}
