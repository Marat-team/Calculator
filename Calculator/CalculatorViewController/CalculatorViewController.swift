//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Marat Shagiakhmetov on 01.03.2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    private lazy var buttonAc: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 119/255,
                    green: 221/255,
                    blue: 231/255,
                    alpha: 1),
            title: "AC",
            color: .black,
            size: 35)
        button.addTarget(self, action: #selector(buttonAcInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonPlusOfMinus: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 119/255,
                    green: 221/255,
                    blue: 231/255,
                    alpha: 1),
            image: image(
                image: "plus.forwardslash.minus",
                size: 28).image,
            color: .black)
        return button
    }()
    
    private lazy var buttonPercent: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 119/255,
                    green: 221/255,
                    blue: 231/255,
                    alpha: 1),
            image: image(
                image: "percent",
                size: 28).image,
            color: .black)
        return button
    }()
    
    private lazy var buttonDivision: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            image: image(
                image: "divide",
                size: 28).image,
            color: .white,
            tag: 1)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonSeven: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "7",
            color: .black,
            size: 42,
            tag: 7)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonEight: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "8",
            color: .black,
            size: 42,
            tag: 8)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonNine: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "9",
            color: .black,
            size: 42,
            tag: 9)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonMultiplier: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            image: image(
                image: "multiply",
                size: 28).image,
            color: .white,
            tag: 2)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonFour: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "4",
            color: .black,
            size: 42,
            tag: 4)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonFive: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "5",
            color: .black,
            size: 42,
            tag: 5)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonSix: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "6",
            color: .black,
            size: 42,
            tag: 6)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonMinus: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            image: image(
                image: "minus",
                size: 28).image,
            color: .white,
            tag: 3)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonOne: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "1",
            color: .black,
            size: 42,
            tag: 1)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonTwo: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "2",
            color: .black,
            size: 42,
            tag: 2)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonThree: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "3",
            color: .black,
            size: 42,
            tag: 3)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonPlus: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            image: image(
                image: "plus",
                size: 28).image,
            color: .white,
            tag: 4)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonZero: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: "0",
            color: .black,
            size: 42,
            tag: 0)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonComma: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: ",",
            color: .black,
            size: 42)
        return button
    }()
    
    private lazy var buttonEqual: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            image: image(
                image: "equal",
                size: 28).image,
            color: .white,
            tag: 5)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelResults: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = UIFont(name: "Kohinoor Bangla", size: 100)
        label.textAlignment = .right
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let sizeButton: CGFloat = 78.75
    private var start = true
    private var calculate = false
    private var number: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDesign()
        addSubviews(subview: buttonAc,
                    buttonPlusOfMinus,
                    buttonPercent,
                    buttonDivision,
                    buttonSeven,
                    buttonEight,
                    buttonNine,
                    buttonMultiplier,
                    buttonFour,
                    buttonFive,
                    buttonSix,
                    buttonMinus,
                    buttonOne,
                    buttonTwo,
                    buttonThree,
                    buttonPlus,
                    buttonZero,
                    buttonComma,
                    buttonEqual,
                    labelResults)
        setConstraints()
    }
    
    private func setupDesign() {
        view.backgroundColor = UIColor(
            red: 63/255,
            green: 36/255,
            blue: 92/255,
            alpha: 1)
    }
    
    private func addSubviews(subview: UIView...) {
        subview.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            buttonAc.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonAc.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonAc.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonAc.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        NSLayoutConstraint.activate([
            buttonPlusOfMinus.leadingAnchor.constraint(equalTo: buttonAc.trailingAnchor, constant: 15),
            buttonPlusOfMinus.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonPlusOfMinus.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonPlusOfMinus.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonPercent.leadingAnchor.constraint(equalTo: buttonPlusOfMinus.trailingAnchor, constant: 15),
            buttonPercent.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonPercent.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonPercent.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonDivision.leadingAnchor.constraint(equalTo: buttonPercent.trailingAnchor, constant: 15),
            buttonDivision.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonDivision.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonDivision.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonSeven.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonSeven.topAnchor.constraint(equalTo: buttonAc.bottomAnchor, constant: 15),
            buttonSeven.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonSeven.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonEight.leadingAnchor.constraint(equalTo: buttonSeven.trailingAnchor, constant: 15),
            buttonEight.topAnchor.constraint(equalTo: buttonPlusOfMinus.bottomAnchor, constant: 15),
            buttonEight.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonEight.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonNine.leadingAnchor.constraint(equalTo: buttonEight.trailingAnchor, constant: 15),
            buttonNine.topAnchor.constraint(equalTo: buttonPercent.bottomAnchor, constant: 15),
            buttonNine.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonNine.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonMultiplier.leadingAnchor.constraint(equalTo: buttonNine.trailingAnchor, constant: 15),
            buttonMultiplier.topAnchor.constraint(equalTo: buttonDivision.bottomAnchor, constant: 15),
            buttonMultiplier.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonMultiplier.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonFour.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonFour.topAnchor.constraint(equalTo: buttonSeven.bottomAnchor, constant: 15),
            buttonFour.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonFour.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonFive.leadingAnchor.constraint(equalTo: buttonFour.trailingAnchor, constant: 15),
            buttonFive.topAnchor.constraint(equalTo: buttonEight.bottomAnchor, constant: 15),
            buttonFive.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonFive.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonSix.leadingAnchor.constraint(equalTo: buttonFive.trailingAnchor, constant: 15),
            buttonSix.topAnchor.constraint(equalTo: buttonNine.bottomAnchor, constant: 15),
            buttonSix.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonSix.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonMinus.leadingAnchor.constraint(equalTo: buttonSix.trailingAnchor, constant: 15),
            buttonMinus.topAnchor.constraint(equalTo: buttonMultiplier.bottomAnchor, constant: 15),
            buttonMinus.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonMinus.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonOne.topAnchor.constraint(equalTo: buttonFour.bottomAnchor, constant: 15),
            buttonOne.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonOne.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonTwo.leadingAnchor.constraint(equalTo: buttonOne.trailingAnchor, constant: 15),
            buttonTwo.topAnchor.constraint(equalTo: buttonFive.bottomAnchor, constant: 15),
            buttonTwo.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonTwo.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonThree.leadingAnchor.constraint(equalTo: buttonTwo.trailingAnchor, constant: 15),
            buttonThree.topAnchor.constraint(equalTo: buttonSix.bottomAnchor, constant: 15),
            buttonThree.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonThree.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonPlus.leadingAnchor.constraint(equalTo: buttonThree.trailingAnchor, constant: 15),
            buttonPlus.topAnchor.constraint(equalTo: buttonMinus.bottomAnchor, constant: 15),
            buttonPlus.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonPlus.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonZero.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonZero.topAnchor.constraint(equalTo: buttonOne.bottomAnchor, constant: 15),
            buttonZero.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonZero.widthAnchor.constraint(equalToConstant: width(size: sizeButton))
        ])
        
        NSLayoutConstraint.activate([
            buttonComma.leadingAnchor.constraint(equalTo: buttonZero.trailingAnchor, constant: 15),
            buttonComma.topAnchor.constraint(equalTo: buttonThree.bottomAnchor, constant: 15),
            buttonComma.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonComma.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            buttonEqual.leadingAnchor.constraint(equalTo: buttonComma.trailingAnchor, constant: 15),
            buttonEqual.topAnchor.constraint(equalTo: buttonPlus.bottomAnchor, constant: 15),
            buttonEqual.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonEqual.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelResults.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            labelResults.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            labelResults.bottomAnchor.constraint(equalTo: buttonAc.topAnchor, constant: -25)
        ])
    }
    
    @objc private func buttonAcInput() {
        guard !start else { return }
        start.toggle()
        labelResults.text = "0"
        labelResults.font = UIFont(name: "Kohinoor Bangla", size: 100)
        buttonAc.setTitle("AC", for: .normal)
    }
    
    @objc private func buttonNumbersInput(button: UIButton) {
        guard labelResults.text?.count ?? 0 < 9 else { return }
        
        numbersInput(tag: button.tag)
        checkResetButtons()
        
        let count = labelResults.text?.count ?? 0
        
        switch count {
        case 7:
            labelResults.font = UIFont(name: "Kohinoor Bangla", size: 90)
        case 8:
            labelResults.font = UIFont(name: "Kohinoor Bangla", size: 80)
        case 9:
            labelResults.font = UIFont(name: "Kohinoor Bangla", size: 70)
        default: break
        }
    }
    
    private func numbersInput(tag: Int) {
        let text = "\(tag)"
        if start {
            start.toggle()
            buttonAc.setTitle("C", for: .normal)
            labelResults.text = text
        } else {
            var value = labelResults.text ?? ""
            value += text
            labelResults.text = value
        }
    }
    
    private func checkResetButtons() {
        guard calculate else { return }
        calculate.toggle()
        buttonCalcDefault(buttons: buttonDivision,
                          buttonMultiplier,
                          buttonMinus,
                          buttonPlus)
    }
    
    @objc private func calc(button: UIButton) {
        let tag = button.tag
        switch tag {
        case 1:
            division()
        case 2:
            multiplication()
        case 3:
            subtraction()
        case 4:
            summation()
        default:
            calcResult()
        }
    }
    
    private func division() {
        let text = labelResults.text ?? ""
        number = Float(text) ?? 0
        buttonCalcPress(button: buttonDivision)
        start.toggle()
        checkCalc()
        
    }
    
    private func multiplication() {
        
    }
    
    private func subtraction() {
        
    }
    
    private func summation() {
        
    }
    
    private func calcResult() {
        let text = labelResults.text ?? ""
        let value = Float(text) ?? 0
        let result = number / value
        labelResults.text = "\(result)"
    }
    
    private func checkCalc() {
        if !calculate {
            calculate.toggle()
        }
    }
    
    private func buttonCalcPress(button: UIButton) {
        button.tintColor = UIColor(
            red: 255/255,
            green: 83/255,
            blue: 73/255,
            alpha: 1)
        button.backgroundColor = .white
    }
    
    private func buttonCalcDefault(buttons: UIButton...) {
        buttons.forEach { button in
            button.tintColor = .white
            button.backgroundColor = UIColor(
                red: 255/255,
                green: 83/255,
                blue: 73/255,
                alpha: 1)
        }
    }
}

extension CalculatorViewController {
    private func setupButton(backgroundColor: UIColor,
                             title: String? = nil,
                             image: UIImage? = nil,
                             color: UIColor,
                             size: CGFloat? = nil,
                             tag: Int? = nil) -> UIButton {
        let button = UIButton(type: .system)
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.tintColor = color
        button.titleLabel?.font = UIFont(name: "Arial", size: size ?? 0)
        button.layer.cornerRadius = corner(size: sizeButton)
        button.setImage(image, for: .normal)
        button.tag = tag ?? 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    private func corner(size: CGFloat) -> CGFloat {
        size / 2
    }
    
    private func width(size: CGFloat) -> CGFloat {
        size * 2 + 15
    }
    
    private func image(image: String, size: CGFloat) -> UIImageView {
        let imageView = UIImageView()
        let bold = UIImage.SymbolConfiguration(weight: .medium)
        let size = UIImage.SymbolConfiguration(pointSize: size)
        let combined = bold.applying(size)
        imageView.image = UIImage(systemName: image, withConfiguration: combined)
        return imageView
    }
}
