//
//  StartCoordinator.swift
//  ContryDefender
//
//  Created by Admin on 15/10/2023.
//

import Foundation
import UIKit

class StartCoordinator : Coordinator {
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        goToStart()
    }
}

extension StartCoordinator: StartNavigation {
    func goToStart(){
        let storyboard = UIStoryboard(name: "StartView", bundle: nil)
        guard let startViewController = storyboard.instantiateViewController(withIdentifier: "StartView") as? StartViewController else { return }
        let viewModel = StartViewModel(navigation: self)
        startViewController.viewModel = viewModel
        navigationController.pushViewController(startViewController, animated: true)
    }
}
