//
//  SplashPresenter.swift
//  ContryDefender
//
//  Created by Admin on 08/10/2023.
//

import UIKit

protocol SplashPresenterDescription: AnyObject {
    func present()
    func dismiss(completion: (() -> Void)?)
    func attachWindowTo(scene: UIScene)
}

final class SplashPresenter: SplashPresenterDescription {
    
    private lazy var credits: String = {
        return """
        Created by:
        \nAlbert Lukmanov
        \nGabriel Zdravkovici
        \nMakar Koblia
        """
    }()
    
    private lazy var foregroundSplashWindow: UIWindow  = {
        let splashWindow = UIWindow()
        
        let storyboard = UIStoryboard(name: "SplashScreen", bundle: nil)
        let splashViewController = storyboard.instantiateViewController(withIdentifier: "SplashScreenView") as? SplashScreenView
        splashViewController?.credits = credits
        
        splashWindow.windowLevel = .normal + 1
        splashWindow.rootViewController = splashViewController
        splashWindow.frame = UIScreen.main.bounds
        return splashWindow
    }()
    
    func attachWindowTo(scene: UIScene) {
        foregroundSplashWindow.windowScene = scene as? UIWindowScene
    }
    
    func present() {
        foregroundSplashWindow.isHidden = false
        let splashViewController = foregroundSplashWindow.rootViewController as? SplashScreenView
        // Animation starting point.
        splashViewController?.view.layoutIfNeeded()
        splashViewController?.creditsLabel.alpha = 0
        UIView.animate(withDuration: 1) {
            // Animation finish point
            guard let oldLabelCenterYConstraint = splashViewController?.labelCenterYConstraint.multiplier else { return }
            let newLabelCenterYConstraint = splashViewController?.labelCenterYConstraint.setMultiplier(oldLabelCenterYConstraint * 0.85)
            guard let oldScaleLogoConstraint = splashViewController?.scaleLogoConstraint.multiplier else { return }
            let newScaleLogoConstraint = splashViewController?.scaleLogoConstraint.setMultiplier(oldScaleLogoConstraint * 0.85)
            
            splashViewController?.labelCenterYConstraint = newLabelCenterYConstraint
            splashViewController?.scaleLogoConstraint = newScaleLogoConstraint
            splashViewController?.view.layoutIfNeeded()
            splashViewController?.creditsLabel.alpha = 1
        }
    }
    
    func dismiss(completion: (() -> Void)?) {
        foregroundSplashWindow.windowScene = nil
        foregroundSplashWindow.rootViewController = nil
        UIView.animate(withDuration: 0.3) {
            self.foregroundSplashWindow.alpha = 0
        } completion: { (_) in
            completion?()
        }
    }
}
