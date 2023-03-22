//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Marat Shagiakhmetov on 01.03.2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    private lazy var buttonClean: UIButton = {
        let button = Button().setupButton(
            backgroundColor: UIColor(
                red: 119/255,
                green: 221/255,
                blue: 231/255,
                alpha: 1),
            cornerRadius: corner(size: sizeButton),
            subview: labelClean)
        button.addTarget(self, action: #selector(buttonAcInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelClean: UILabel = {
        let label = setupLabel(
            text: "AC",
            style: "Arial",
            size: 35,
            color: .black)
        return label
    }()
    
    private lazy var buttonPlusMinus: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 119/255,
                    green: 221/255,
                    blue: 231/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            subview: imagePlusMinus)
        button.addTarget(self, action: #selector(plusMinus), for: .touchUpInside)
        return button
    }()
    
    private lazy var imagePlusMinus: UIImageView = {
        let imageView = setupImage(
            image: "plus.forwardslash.minus",
            size: 38,
            color: .black)
        return imageView
    }()
    
    private lazy var buttonPercent: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 119/255,
                    green: 221/255,
                    blue: 231/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            subview: imagePercent)
        button.addTarget(self, action: #selector(percentCalc), for: .touchUpInside)
        return button
    }()
    
    private lazy var imagePercent: UIImageView = {
        let imageView = setupImage(
            image: "percent",
            size: 38,
            color: .black)
        return imageView
    }()
    
    private lazy var buttonDivision: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 1,
            subview: imageDivision)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var imageDivision: UIImageView = {
        let imageView = setupImage(
            image: "divide",
            size: 38,
            color: .white)
        return imageView
    }()
    
    private lazy var buttonSeven: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 7,
            subview: labelSeven)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelSeven: UILabel = {
        let label = setupLabel(
            text: "7",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonEight: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 8,
            subview: labelEight)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelEight: UILabel = {
        let label = setupLabel(
            text: "8",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonNine: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 9,
            subview: labelNine)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelNine: UILabel = {
        let label = setupLabel(
            text: "9",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonMultiplier: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 2,
            subview: imageMultiplier)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var imageMultiplier: UIImageView = {
        let imageView = setupImage(
            image: "multiply",
            size: 38,
            color: .white)
        return imageView
    }()
    
    private lazy var buttonFour: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 4,
            subview: labelFour)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelFour: UILabel = {
        let label = setupLabel(
            text: "4",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonFive: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 5,
            subview: labelFive)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelFive: UILabel = {
        let label = setupLabel(
            text: "5",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonSix: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 6,
            subview: labelSix)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelSix: UILabel = {
        let label = setupLabel(
            text: "6",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonSubtract: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 3,
            subview: imageSubtract)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var imageSubtract: UIImageView = {
        let imageView = setupImage(
            image: "minus",
            size: 38,
            color: .white)
        return imageView
    }()
    
    private lazy var buttonOne: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 1,
            subview: labelOne)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelOne: UILabel = {
        let label = setupLabel(
            text: "1",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonTwo: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 2,
            subview: labelTwo)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelTwo: UILabel = {
        let label = setupLabel(
            text: "2",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonThree: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 3,
            subview: labelThree)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelThree: UILabel = {
        let label = setupLabel(
            text: "3",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonAdd: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 4,
            subview: imageAdd)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var imageAdd: UIImageView = {
        let imageView = setupImage(
            image: "plus",
            size: 38,
            color: .white)
        return imageView
    }()
    
    private lazy var buttonZero: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 0,
            subview: labelZero)
        button.addTarget(self, action: #selector(buttonNumbersInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelZero: UILabel = {
        let label = setupLabel(
            text: "0",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonComma: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            subview: labelComma)
        return button
    }()
    
    private lazy var labelComma: UILabel = {
        let label = setupLabel(
            text: ",",
            style: "Arial",
            size: 42,
            color: .black)
        return label
    }()
    
    private lazy var buttonEqual: UIButton = {
        let button = Button().setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 83/255,
                    blue: 73/255,
                    alpha: 1),
            cornerRadius: corner(size: sizeButton),
            tag: 5,
            subview: imageEqual)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
    }()
    
    private lazy var imageEqual: UIImageView = {
        let imageView = setupImage(
            image: "equal",
            size: 38,
            color: .white)
        return imageView
    }()
    
    private lazy var labelResults: UILabel = {
        let label = setupLabel(
            text: "0",
            style: "Kohinoor Bangla",
            size: 100,
            alignment: .right,
            color: .white)
        return label
    }()
    
    private let sizeButton: CGFloat = 78.75
    private var start = true
    private var isNumberOne = true
    private var arithmeticButton = 0
    private var numberOne: Float = 0
    private var numberTwo: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDesign()
        addSubviews(subviews: buttonClean,
                    buttonPlusMinus,
                    buttonPercent,
                    buttonDivision,
                    buttonSeven,
                    buttonEight,
                    buttonNine,
                    buttonMultiplier,
                    buttonFour,
                    buttonFive,
                    buttonSix,
                    buttonSubtract,
                    buttonOne,
                    buttonTwo,
                    buttonThree,
                    buttonAdd,
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
    
    private func addSubviews(subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            buttonClean.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonClean.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonClean.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonClean.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelClean.centerXAnchor.constraint(equalTo: buttonClean.centerXAnchor),
            labelClean.centerYAnchor.constraint(equalTo: buttonClean.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonPlusMinus.leadingAnchor.constraint(equalTo: buttonClean.trailingAnchor, constant: 15),
            buttonPlusMinus.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonPlusMinus.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonPlusMinus.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            imagePlusMinus.centerXAnchor.constraint(equalTo: buttonPlusMinus.centerXAnchor),
            imagePlusMinus.centerYAnchor.constraint(equalTo: buttonPlusMinus.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonPercent.leadingAnchor.constraint(equalTo: buttonPlusMinus.trailingAnchor, constant: 15),
            buttonPercent.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonPercent.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonPercent.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            imagePercent.centerXAnchor.constraint(equalTo: buttonPercent.centerXAnchor),
            imagePercent.centerYAnchor.constraint(equalTo: buttonPercent.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonDivision.leadingAnchor.constraint(equalTo: buttonPercent.trailingAnchor, constant: 15),
            buttonDivision.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonDivision.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonDivision.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            imageDivision.centerXAnchor.constraint(equalTo: buttonDivision.centerXAnchor),
            imageDivision.centerYAnchor.constraint(equalTo: buttonDivision.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonSeven.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonSeven.topAnchor.constraint(equalTo: buttonClean.bottomAnchor, constant: 15),
            buttonSeven.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonSeven.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelSeven.centerXAnchor.constraint(equalTo: buttonSeven.centerXAnchor),
            labelSeven.centerYAnchor.constraint(equalTo: buttonSeven.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonEight.leadingAnchor.constraint(equalTo: buttonSeven.trailingAnchor, constant: 15),
            buttonEight.topAnchor.constraint(equalTo: buttonPlusMinus.bottomAnchor, constant: 15),
            buttonEight.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonEight.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelEight.centerXAnchor.constraint(equalTo: buttonEight.centerXAnchor),
            labelEight.centerYAnchor.constraint(equalTo: buttonEight.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonNine.leadingAnchor.constraint(equalTo: buttonEight.trailingAnchor, constant: 15),
            buttonNine.topAnchor.constraint(equalTo: buttonPercent.bottomAnchor, constant: 15),
            buttonNine.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonNine.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelNine.centerXAnchor.constraint(equalTo: buttonNine.centerXAnchor),
            labelNine.centerYAnchor.constraint(equalTo: buttonNine.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonMultiplier.leadingAnchor.constraint(equalTo: buttonNine.trailingAnchor, constant: 15),
            buttonMultiplier.topAnchor.constraint(equalTo: buttonDivision.bottomAnchor, constant: 15),
            buttonMultiplier.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonMultiplier.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            imageMultiplier.centerXAnchor.constraint(equalTo: buttonMultiplier.centerXAnchor),
            imageMultiplier.centerYAnchor.constraint(equalTo: buttonMultiplier.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonFour.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonFour.topAnchor.constraint(equalTo: buttonSeven.bottomAnchor, constant: 15),
            buttonFour.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonFour.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelFour.centerXAnchor.constraint(equalTo: buttonFour.centerXAnchor),
            labelFour.centerYAnchor.constraint(equalTo: buttonFour.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonFive.leadingAnchor.constraint(equalTo: buttonFour.trailingAnchor, constant: 15),
            buttonFive.topAnchor.constraint(equalTo: buttonEight.bottomAnchor, constant: 15),
            buttonFive.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonFive.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelFive.centerXAnchor.constraint(equalTo: buttonFive.centerXAnchor),
            labelFive.centerYAnchor.constraint(equalTo: buttonFive.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonSix.leadingAnchor.constraint(equalTo: buttonFive.trailingAnchor, constant: 15),
            buttonSix.topAnchor.constraint(equalTo: buttonNine.bottomAnchor, constant: 15),
            buttonSix.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonSix.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelSix.centerXAnchor.constraint(equalTo: buttonSix.centerXAnchor),
            labelSix.centerYAnchor.constraint(equalTo: buttonSix.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonSubtract.leadingAnchor.constraint(equalTo: buttonSix.trailingAnchor, constant: 15),
            buttonSubtract.topAnchor.constraint(equalTo: buttonMultiplier.bottomAnchor, constant: 15),
            buttonSubtract.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonSubtract.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            imageSubtract.centerXAnchor.constraint(equalTo: buttonSubtract.centerXAnchor),
            imageSubtract.centerYAnchor.constraint(equalTo: buttonSubtract.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonOne.topAnchor.constraint(equalTo: buttonFour.bottomAnchor, constant: 15),
            buttonOne.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonOne.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelOne.centerXAnchor.constraint(equalTo: buttonOne.centerXAnchor),
            labelOne.centerYAnchor.constraint(equalTo: buttonOne.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonTwo.leadingAnchor.constraint(equalTo: buttonOne.trailingAnchor, constant: 15),
            buttonTwo.topAnchor.constraint(equalTo: buttonFive.bottomAnchor, constant: 15),
            buttonTwo.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonTwo.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelTwo.centerXAnchor.constraint(equalTo: buttonTwo.centerXAnchor),
            labelTwo.centerYAnchor.constraint(equalTo: buttonTwo.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonThree.leadingAnchor.constraint(equalTo: buttonTwo.trailingAnchor, constant: 15),
            buttonThree.topAnchor.constraint(equalTo: buttonSix.bottomAnchor, constant: 15),
            buttonThree.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonThree.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelThree.centerXAnchor.constraint(equalTo: buttonThree.centerXAnchor),
            labelThree.centerYAnchor.constraint(equalTo: buttonThree.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonAdd.leadingAnchor.constraint(equalTo: buttonThree.trailingAnchor, constant: 15),
            buttonAdd.topAnchor.constraint(equalTo: buttonSubtract.bottomAnchor, constant: 15),
            buttonAdd.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonAdd.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            imageAdd.centerXAnchor.constraint(equalTo: buttonAdd.centerXAnchor),
            imageAdd.centerYAnchor.constraint(equalTo: buttonAdd.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonZero.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonZero.topAnchor.constraint(equalTo: buttonOne.bottomAnchor, constant: 15),
            buttonZero.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonZero.widthAnchor.constraint(equalToConstant: width(size: sizeButton))
        ])
        
        NSLayoutConstraint.activate([
            labelZero.centerXAnchor.constraint(equalTo: buttonOne.centerXAnchor),
            labelZero.centerYAnchor.constraint(equalTo: buttonZero.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonComma.leadingAnchor.constraint(equalTo: buttonZero.trailingAnchor, constant: 15),
            buttonComma.topAnchor.constraint(equalTo: buttonThree.bottomAnchor, constant: 15),
            buttonComma.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonComma.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelComma.centerXAnchor.constraint(equalTo: buttonComma.centerXAnchor),
            labelComma.centerYAnchor.constraint(equalTo: buttonComma.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonEqual.leadingAnchor.constraint(equalTo: buttonComma.trailingAnchor, constant: 15),
            buttonEqual.topAnchor.constraint(equalTo: buttonAdd.bottomAnchor, constant: 15),
            buttonEqual.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonEqual.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            imageEqual.centerXAnchor.constraint(equalTo: buttonEqual.centerXAnchor),
            imageEqual.centerYAnchor.constraint(equalTo: buttonEqual.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            labelResults.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            labelResults.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            labelResults.bottomAnchor.constraint(equalTo: buttonClean.topAnchor, constant: -25)
        ])
    }
    
    @objc private func buttonAcInput() {
        switch arithmeticButton {
        case 1...4:
            buttonCalcPress()
        default:
            resetLabelResults()
        }
    }
    
    private func buttonCalcPress() {
        if labelClean.text == "C" {
            setupButtonCalcPress()
            resetLabelResults()
        } else {
            checkResetButtons()
            resetAllConfiguration()
        }
    }
    
    private func resetLabelResults() {
        labelResults.text = "0"
        labelResults.font = UIFont(name: "Kohinoor Bangla", size: 100)
        checkStart()
        resetNumberOne()
        guard labelClean.text == "C" else { return }
        labelClean.text = "AC"
    }
    
    private func setupButtonCalcPress() {
        guard !start else { return }
        setupButtonCalcPress(tag: arithmeticButton)
    }
    
    private func resetAllConfiguration() {
        arithmeticButton = 0
        numberOne = 0
        numberTwo = 0
    }
    
    @objc private func buttonNumbersInput(button: UIButton) {
        let tag = button.tag
        numbersInput(tag: tag)
        checkResetButtons()
        
        guard labelResults.text?.count ?? 0 > 9 else { return }
        labelResults.text?.removeLast()
    }
    
    private func numbersInput(tag: Int) {
        if start {
            input(tag: tag)
        } else {
            inputCountinue(tag: tag)
        }
    }
    
    private func input(tag: Int) {
        start.toggle()
        let text = "\(tag)"
        labelResults.text = text
        
        setupNumber(text: text)
        
        guard labelClean.text == "AC" else { return }
        labelClean.text = "C"
    }
    
    private func inputCountinue(tag: Int) {
        let text = labelResults.text ?? ""
        let newText = checkText(text: text, tag: tag)
        labelResults.text = "\(newText)"
        
        setupNumber(text: newText)
    }
    
    private func checkText(text: String, tag: Int) -> String {
        var newText = text
        if text == "0" {
            newText = "\(tag)"
        } else {
            newText += "\(tag)"
        }
        return newText
    }
    
    private func setupNumber(text: String) {
        let number = Float(text) ?? 0
        checkSetupNumber(number: number)
    }
    
    private func checkSetupNumber(number: Float) {
        if isNumberOne {
            numberOne = number
        } else {
            numberTwo = number
        }
    }
    
    @objc private func plusMinus() {
        var text = setupNumber()
        text.negate()
        checkSetupNumber(number: text)
        labelResults.text = text.clean()
    }
    
    @objc private func calc(button: UIButton) {
        let tag = button.tag
        if tag < 5 {
            calcButtons(tag: tag)
        } else {
            calcResult(tag: arithmeticButton)
        }
    }
    
    private func calcButtons(tag: Int) {
        checkArithmeticOperator()
        
        checkButtonAc()
        checkNumberOne()
        checkResetButtons()
        checkStart()
        
        arithmeticButton = tag
        setupButtonCalcPress(tag: tag)
    }
    
    private func checkButtonAc() {
        guard labelClean.text == "AC" else { return }
        labelResults.text = numberOne.clean()
    }
    
    private func checkNumberOne() {
        guard isNumberOne else { return }
        isNumberOne.toggle()
    }
    
    private func checkArithmeticOperator() {
        guard !isNumberOne else { return }
        guard arithmeticButton > 0 else { return }
        guard !start else { return }
        runCalculation(tag: arithmeticButton)
    }
    
    private func checkResetButtons() {
        guard arithmeticButton > 0 else { return }
        buttonCalcDefault(buttons: buttonDivision,
                          buttonMultiplier,
                          buttonSubtract,
                          buttonAdd,
                          images: imageDivision,
                          imageMultiplier,
                          imageSubtract,
                          imageAdd)
    }
    
    private func calcResult(tag: Int) {
        guard arithmeticButton > 0 else { return }
        
        checkNumberTwo()
        runCalculation(tag: tag)
        
        checkStart()
        resetNumberOne()
    }
    
    private func resetNumberOne() {
        guard !isNumberOne else { return }
        isNumberOne.toggle()
    }
    
    private func checkNumberTwo() {
        guard !isNumberOne else { return }
        numberTwo = setupNumber()
        checkResetButtons()
    }
    
    private func setupNumber() -> Float {
        let text = labelResults.text ?? ""
        return Float(text) ?? 0
    }
    
    private func runCalculation(tag: Int) {
        switch tag {
        case 1: labelResults.text = calculate(.division).clean()
        case 2: labelResults.text = calculate(.multiplication).clean()
        case 3: labelResults.text = calculate(.subtraction).clean()
        default: labelResults.text = calculate(.addition).clean()
        }
        
        guard labelResults.text?.count ?? 0 > 9 else { return }
        let text = String(format: "%e", numberOne)
        labelResults.text = text
    }
    
    private func calculate(_ calculate: Calculate) -> Float {
        var result = numberOne
        
        switch calculate {
        case .division: result /= numberTwo
        case .multiplication: result *= numberTwo
        case .subtraction: result -= numberTwo
        case .addition: result += numberTwo
        }
        numberOne = result
        
        return result
    }
    
    private func checkStart() {
        guard !start else { return }
        start.toggle()
    }
    
    private func setupButtonCalcPress(tag: Int) {
        switch tag {
        case 1: buttonCalcPress(button: buttonDivision, image: imageDivision)
        case 2: buttonCalcPress(button: buttonMultiplier, image: imageMultiplier)
        case 3: buttonCalcPress(button: buttonSubtract, image: imageSubtract)
        case 4: buttonCalcPress(button: buttonAdd, image: imageAdd)
        default: break
        }
    }
    
    @objc private func percentCalc() {
        let value = setupNumber() / 100
        checkSetupNumber(number: value)
        labelResults.text = "\(value)"
    }
    
    private func buttonCalcPress(button: UIButton, image: UIImageView) {
        image.tintColor = UIColor(
            red: 255/255,
            green: 83/255,
            blue: 73/255,
            alpha: 1)
        button.backgroundColor = .white
    }
    
    private func buttonCalcDefault(buttons: UIButton..., images: UIImageView...) {
        buttons.forEach { button in
            button.backgroundColor = UIColor(
                red: 255/255,
                green: 83/255,
                blue: 73/255,
                alpha: 1)
        }
        
        images.forEach { image in
            image.tintColor = .white
        }
    }
}

extension CalculatorViewController {
    private func corner(size: CGFloat) -> CGFloat {
        size / 2
    }
    
    private func width(size: CGFloat) -> CGFloat {
        size * 2 + 15
    }
}

extension CalculatorViewController {
    private func setupLabel(text: String, style: String,
                            size: CGFloat, alignment: NSTextAlignment? = nil,
                            color: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont(name: style, size: size)
        label.textAlignment = alignment ?? .natural
        label.textColor = color
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

extension CalculatorViewController {
    private func setupImage(image: String, size: CGFloat, color: UIColor) -> UIImageView {
        let size = UIImage.SymbolConfiguration(pointSize: size)
        let image = UIImage(systemName: image, withConfiguration: size)
        let imageView = UIImageView(image: image)
        imageView.tintColor = color
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}

extension Float {
    func clean() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return String(formatter.string(from: number) ?? "")
    }
}
