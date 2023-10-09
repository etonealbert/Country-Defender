//
//  NSLayoutConstraint + Extensions.swift
//  ContryDefender
//
//  Created by Admin on 08/10/2023.
//

import UIKit

extension NSLayoutConstraint {
    // This method creates a new constraint with the same properties as the original one, except for the multiplier
    func setMultiplier(_ multiplier: CGFloat) -> NSLayoutConstraint {
        // Deactivate the original constraint
        NSLayoutConstraint.deactivate([self])
        
        // Create a new constraint with the new multiplier
        let newConstraint = NSLayoutConstraint(
            item: firstItem!,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        
        // Copy the priority and identifier from the original constraint
        newConstraint.priority = priority
        newConstraint.identifier = identifier
        
        // Activate the new constraint
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
}
