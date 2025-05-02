//
//  GeneralButton.swift
//  Hackathon By BSI
//
//  Created by MACBOOK PRO M1 2020 on 02/05/25.
//

import Foundation
import UIKit

class GeneralButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .primaryBSIGreen
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = 25.0
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    func setFontColor(fontColor: UIColor) {
        self.setTitleColor(fontColor, for: .normal)
    }
    
    func setStyleFullButton(color: UIColor, withoutCornerRadius: Bool = false) {
        self.backgroundColor = color
        if !withoutCornerRadius {
            self.layer.cornerRadius = self.bounds.height / 2
        }
    }
    
    func setStyleOutlinedButton(bgColor: UIColor, outlineColor: UIColor, withoutCornerRadius: Bool = false) {
        self.backgroundColor = bgColor
        self.layer.borderWidth = 2
        self.layer.borderColor = outlineColor.cgColor
        if !withoutCornerRadius {
            self.layer.cornerRadius = self.bounds.height / 2
        }
    }
    
    func setStyleDefaultButton(bgColor: UIColor, textColor: UIColor) {
        self.backgroundColor = bgColor
        self.makeCornerRadius(0, maskedCorner: nil)
        setFontColor(fontColor: textColor)
    }
    
    func setEnableFooter(isEnabled: Bool) {
        if isEnabled {
            self.setStyleDefaultButton(bgColor: UIColor.primaryBSIGreen, textColor: .white)
            self.isEnabled = true
        } else {
            self.makeCornerRadius(25, maskedCorner: nil)
            self.setStyleDefaultButton(bgColor: .primaryBSIGrey2, textColor: .primaryBSIGrey)
            self.isEnabled = false
        }
    }
}
