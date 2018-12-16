//
//  FontExtensions.swift
//  CustomFontForAllApp
//
//  Created by Vy Nguyen on 12/16/18.
//  Copyright © 2018 VVLab. All rights reserved.
//

import Foundation
import UIKit

enum FontType {
    case ultraLight
    case thin
    case light
    case regular
    case medium
    case semibold
    case bold
    case heavy
    case black
    case italic
    case none
}
/*
 System fonts: ultra light, thin and light is the same :)
 */
extension UIFont {
    var fontType: FontType {
        switch fontName {
        case ".SFUIText-Light":
            return .light
        case ".SFUIText":
            return .regular
        case ".SFUIText-Medium":
            return .medium
        case ".SFUIText-Semibold":
            return .semibold
        case ".SFUIText-Bold":
            return .bold
        case ".SFUIText-Heavy":
            return .heavy
        case ".SFUIText-Italic":
            return .italic
        default:
            print("this font is not handled: \(fontName)" )
            return .none
        }
    }

    func transformToCustomFont() -> UIFont {
        switch fontType {
        case .ultraLight:
            return UIFont.ultraLightCustomFont(ofSize: self.pointSize)
        case .thin:
            return UIFont.thinCustomFont(ofSize: self.pointSize)
        case .light:
            return UIFont.lightCustomFont(ofSize: self.pointSize)
        case .regular:
            return UIFont.regularCustomFont(ofSize: self.pointSize)
        case .medium:
            return UIFont.mediumCustomFont(ofSize: self.pointSize)
        case .semibold:
            return UIFont.semiboldCustomFont(ofSize: self.pointSize)
        case .bold:
            return UIFont.boldCustomFont(ofSize: self.pointSize)
        case .heavy:
            return UIFont.heavyCustomFont(ofSize: self.pointSize)
        case .black:
            return UIFont.blackCustomFont(ofSize: self.pointSize)
        case .italic:
            return UIFont.italicCustomFont(ofSize: self.pointSize)
        case .none :
            return self
        }
    }
}
extension UIFont {
    /* HelveticaNeue family
     HelveticaNeue
     HelveticaNeue-Bold
     HelveticaNeue-BoldItalic
     HelveticaNeue-CondensedBlack
     HelveticaNeue-CondensedBold
     HelveticaNeue-Italic
     HelveticaNeue-Light
     HelveticaNeue-LightItalic
     HelveticaNeue-Medium
     HelveticaNeue-MediumItalic
     HelveticaNeue-UltraLight
     HelveticaNeue-UltraLightItalic
     HelveticaNeue-Thin
     HelveticaNeue-ThinItalic
     */
    class func ultraLightCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-UltraLight", size: fontSize)!
    }
    class func thinCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Thin", size: fontSize)!
    }
    class func lightCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Light", size: fontSize)!
    }
    class func regularCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue", size: fontSize)!
    }
    class func mediumCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Medium", size: fontSize)!
    }
    class func semiboldCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Medium", size: fontSize)!
    }
    class func boldCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Bold", size: fontSize)!
    }
    class func heavyCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-CondensedBold", size: fontSize)!
    }
    class func blackCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-CondensedBlack", size: fontSize)!
    }
    class func italicCustomFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Italic", size: fontSize)!
    }
}
