//
//  UITableViewCell+Extensions.swift
//  Todoey-Realm
//
//  Created by Salah Khaled on 4/24/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    @IBInspectable var disclosureIndicatorColor: UIColor? {
        get {
            let button = getdisclosureIndicatorButton()
            return button?.tintColor
        }
        set {
            let button = getdisclosureIndicatorButton()
            let image = button?.backgroundImage(for: .normal)?.withRenderingMode(.alwaysTemplate)
            button?.setImage(image, for: .normal)
            button?.tintColor = newValue
        }
    }
    
    private func getdisclosureIndicatorButton() -> UIButton? {
        for view in subviews {
            if let button = view as? UIButton {
                return button
            }
        }
        return nil
    }
    
    func setAccessoryColor(of color: UIColor) {
        let button = getdisclosureIndicatorButton()
        let image = button?.backgroundImage(for: .normal)?.withRenderingMode(.alwaysTemplate)
        button?.setImage(image, for: .normal)
        button?.tintColor = color
    }
}
