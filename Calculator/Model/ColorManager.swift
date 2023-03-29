//
//  ColorManager.swift
//  Calculator
//
//  Created by Marat Shagiakhmetov on 29.03.2023.
//

import UIKit

extension UIColor {
    struct Color {
        static var red: UIColor {
            return UIColor(red: 255/255, green: 83/255, blue: 73/255, alpha: 1)
        }
        static var orange: UIColor {
            return UIColor(red: 255/255, green: 219/255, blue: 139/255, alpha: 1)
        }
        static var lightBlue: UIColor {
            return UIColor(red: 119/255, green: 221/255, blue: 231/255, alpha: 1)
        }
        static var darkPurple: UIColor {
            return UIColor(red: 63/255, green: 36/255, blue: 92/255, alpha: 1)
        }
        static var white: UIColor {
            return UIColor.white
        }
        static var black: UIColor {
            return UIColor.black
        }
    }
}
