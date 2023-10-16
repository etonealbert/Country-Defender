//
//  StartViewController.swift
//  ContryDefender
//
//  Created by Albert Lukmanov on 09/10/2023.
//

import Foundation
import UIKit

class StartViewController: UIViewController {
    
    weak var viewModel: StartViewModel!
    
    private lazy var settingsButton = SettingsButton()
    private lazy var startButton = StartButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        view.backgroundColor = .clear
        view.addSubview(settingsButton)
        settingsButton.delegate = self
        view.addSubview(startButton)
        startButton.delegate = self
    }
    
    func setupConstraints() {
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        let settingsButtonY = NSLayoutConstraint(item: settingsButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 0.3, constant: 0)
        let settingsButtonX = NSLayoutConstraint(item: settingsButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.7, constant: 0)
        let settingsButtonWidth = NSLayoutConstraint(item: settingsButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.3, constant: 0)
        let settingsButtonAspect = NSLayoutConstraint(item: settingsButton, attribute: .height, relatedBy: .equal, toItem: settingsButton, attribute: .width, multiplier: 0.5, constant: 0)
        NSLayoutConstraint.activate([settingsButtonX,settingsButtonY,settingsButtonWidth,settingsButtonAspect])
        
        startButton.translatesAutoresizingMaskIntoConstraints = false
        let startButtonY = NSLayoutConstraint(item: startButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        let startButtonX = NSLayoutConstraint(item: startButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let startButtonWidth = NSLayoutConstraint(item: startButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.4, constant: 0)
        let startButtonAspect = NSLayoutConstraint(item: startButton, attribute: .height, relatedBy: .equal, toItem: startButton, attribute: .width, multiplier: 0.7, constant: 0)
        NSLayoutConstraint.activate([startButtonX,startButtonY,startButtonWidth,startButtonAspect])
    }
    
}

extension StartViewController: StartButtonDelegate {
    func buttonDidPress(_ sender: StartButton) {
        print("Start button did press")
    }
    
    
}

extension StartViewController: SettingsButtonDelegate {
    func buttonDidPress(_ sender: SettingsButton) {
        print("Settings button did press")
    }
    
    
}
