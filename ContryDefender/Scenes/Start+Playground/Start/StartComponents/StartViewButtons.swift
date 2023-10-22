//
//  StartViewButtons.swift
//  ContryDefender
//
//  Created by Albert Lukmanov on 09/10/2023.
//

import UIKit

protocol SettingsButtonDelegate: AnyObject {
    func buttonDidPress(_ sender: SettingsButton)
}

class SettingsButton: UIButton {
    weak var delegate: SettingsButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(UIImage(named: "settings"), for: .normal)
        self.imageView?.contentMode = .scaleAspectFit
        self.addTarget(self, action: #selector(didPress), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didPress() {
        delegate?.buttonDidPress(self)
    }
}

protocol StartButtonDelegate: AnyObject {
    func buttonDidPress(_ sender: StartButton)
}

class StartButton: UIButton {
    weak var delegate: StartButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(UIImage(named: "start"), for: .normal)
        self.imageView?.contentMode = .scaleAspectFit
        self.addTarget(self, action: #selector(didPress), for: .touchUpInside)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didPress() {
        delegate?.buttonDidPress(self)
    }
}
