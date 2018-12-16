//
//  UIViewExtensions.swift
//  CustomFontForAllApp
//
//  Created by Vy Nguyen on 12/16/18.
//  Copyright © 2018 VVLab. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    open override func awakeFromNib() {
        self.font = self.font.transformToCustomFont()
    }
}

extension UIButton {
    open override func awakeFromNib() {
        self.titleLabel?.font = self.titleLabel?.font.transformToCustomFont()
    }
}

extension UITextField {
    open override func awakeFromNib() {
        self.font = self.font?.transformToCustomFont()
    }
}

extension UITextView {
    open override func awakeFromNib() {
        self.font = self.font?.transformToCustomFont()
    }
}
