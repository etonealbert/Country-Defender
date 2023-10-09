//
//  SplashScreenView.swift
//  ContryDefender
//
//  Created by Albert Lukmanov on 08/10/2023.
//

import UIKit

final class SplashScreenView: UIViewController {
    
    @IBOutlet weak var creditsLabel: UILabel!
    @IBOutlet weak var labelCenterYConstraint: NSLayoutConstraint!
    
    var credits: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        creditsLabel.text = credits
    }
}
