//
//  Float + Extentions.swift
//  Calculator
//
//  Created by Marat Shagiakhmetov on 27.03.2023.
//

import Foundation

extension Float {
    func clean() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 7
        return String(formatter.string(from: number) ?? "")
    }
}
