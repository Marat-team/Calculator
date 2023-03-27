//
//  UIButton.swift
//  Calculator
//
//  Created by Marat Shagiakhmetov on 16.03.2023.
//

import UIKit

class Button: UIButton {
    override var isHighlighted: Bool {
        didSet {
            guard let color = backgroundColor else { return }
            
            UIView.animate(
                withDuration: self.isHighlighted ? 0 : 0.5,
                delay: 0,
                options: [.beginFromCurrentState, .allowUserInteraction]) {
                    self.backgroundColor = color.withAlphaComponent(self.isHighlighted ? 0.4 : 1)
            }
        }
    }
}

extension Button {
    func setupButton(backgroundColor: UIColor, cornerRadius: CGFloat,
                     tag: Int? = nil, subview: UIView) -> UIButton {
        let button = Button(type: .system)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.tag = tag ?? 0
        button.addSubview(subview)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
