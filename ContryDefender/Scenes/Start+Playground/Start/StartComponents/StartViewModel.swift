//
//  StartViewModel.swift
//  ContryDefender
//
//  Created by Albert Lukmanov on 09/10/2023.
//

import Foundation

protocol StartNavigation: AnyObject {
    
}

class StartViewModel {
    
    weak var navigation: StartNavigation!
    
    init(navigation : StartNavigation) {
        self.navigation = navigation
    }
    
}
