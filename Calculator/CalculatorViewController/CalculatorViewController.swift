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
                    alpha: 1))
        button.addTarget(self, action: #selector(buttonAcInput), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelAc: UILabel = {
        let label = setupLabel(
            text: "AC",
            style: "Arial",
            size: 35,
            color: .black)
        return label
    }()
    
    private lazy var buttonPlusMinus: UIButton = {
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 119/255,
                    green: 221/255,
                    blue: 231/255,
                    alpha: 1))
        button.addTarget(self, action: #selector(plusMinus), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelPlusMinus: UILabel = {
        let label = setupLabel(
            image: image(
                image: "plus.forwardslash.minus",
                size: 38).image)
        return label
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
            colorTitle: .black)
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
            colorTitle: .white,
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
            colorTitle: .black,
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
            colorTitle: .black,
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
            colorTitle: .black,
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
            colorTitle: .white,
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
            colorTitle: .black,
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
            colorTitle: .black,
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
            colorTitle: .black,
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
            colorTitle: .white,
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
            colorTitle: .black,
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
            colorTitle: .black,
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
            colorTitle: .black,
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
            colorTitle: .white,
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
            tag: 0)
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
        let button = setupButton(
            backgroundColor:
                UIColor(
                    red: 255/255,
                    green: 219/255,
                    blue: 139/255,
                    alpha: 1),
            title: ",",
            colorTitle: .black,
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
            colorTitle: .white,
            tag: 5)
        button.addTarget(self, action: #selector(calc), for: .touchUpInside)
        return button
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
    private var arithmelticButton = 0
    private var numberOne: Float = 0
    private var numberTwo: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDesign()
        addSubviews(subviews: buttonAc,
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
        
        addSubviewOnbutton(label: labelAc, button: buttonAc)
        addSubviewOnbutton(label: labelPlusMinus, button: buttonPlusMinus)
        addSubviewOnbutton(label: labelZero, button: buttonZero)
    }
    
    private func addSubviews(subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func addSubviewOnbutton(label: UILabel, button: UIButton) {
        button.addSubview(label)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            buttonAc.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonAc.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonAc.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonAc.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelAc.centerXAnchor.constraint(equalTo: buttonAc.centerXAnchor),
            labelAc.centerYAnchor.constraint(equalTo: buttonAc.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonPlusMinus.leadingAnchor.constraint(equalTo: buttonAc.trailingAnchor, constant: 15),
            buttonPlusMinus.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            buttonPlusMinus.heightAnchor.constraint(equalToConstant: sizeButton),
            buttonPlusMinus.widthAnchor.constraint(equalToConstant: sizeButton)
        ])
        
        NSLayoutConstraint.activate([
            labelPlusMinus.centerXAnchor.constraint(equalTo: buttonPlusMinus.centerXAnchor),
            labelPlusMinus.centerYAnchor.constraint(equalTo: buttonPlusMinus.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonPercent.leadingAnchor.constraint(equalTo: buttonPlusMinus.trailingAnchor, constant: 15),
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
            buttonEight.topAnchor.constraint(equalTo: buttonPlusMinus.bottomAnchor, constant: 15),
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
        switch arithmelticButton {
        case 1...4:
            buttonCalcPress()
        default:
            resetLabelResults()
        }
    }
    
    private func buttonCalcPress() {
        if labelAc.text == "C" {
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
        guard labelAc.text == "C" else { return }
        labelAc.text = "AC"
    }
    
    private func setupButtonCalcPress() {
        guard !start else { return }
        setupButtonCalcPress(tag: arithmelticButton)
    }
    
    private func resetAllConfiguration() {
        arithmelticButton = 0
        numberOne = 0
        numberTwo = 0
    }
    
    @objc private func buttonNumbersInput(button: UIButton) {
        guard labelResults.text?.count ?? 0 < 9 else { return }
        let tag = button.tag
        
        numbersInput(tag: tag)
        checkResetButtons()
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
        
        guard labelAc.text == "AC" else { return }
        labelAc.text = "C"
    }
    
    private func inputCountinue(tag: Int) {
        var text = labelResults.text ?? ""
        text += "\(tag)"
        labelResults.text = "\(text)"
        
        setupNumber(text: text)
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
        labelResults.text = "\(text.clean())"
    }
    
    @objc private func calc(button: UIButton) {
        let tag = button.tag
        if tag < 5 {
            calcButtons(tag: tag)
        } else {
            calcResult(tag: arithmelticButton)
        }
    }
    
    private func calcButtons(tag: Int) {
        checkButtonAc()
        checkNumberOne()
        checkResetButtons()
        checkStart()
        
        arithmelticButton = tag
        setupButtonCalcPress(tag: tag)
    }
    
    private func checkButtonAc() {
        guard labelAc.text == "AC" else { return }
        labelResults.text = "\(numberOne.clean())"
    }
    
    private func checkNumberOne() {
        if isNumberOne {
            isNumberOne.toggle()
        } else {
            runCalculation(tag: arithmelticButton)
        }
    }
    
    private func checkResetButtons() {
        guard arithmelticButton > 0 else { return }
        buttonCalcDefault(buttons: buttonDivision,
                          buttonMultiplier,
                          buttonMinus,
                          buttonPlus)
    }
    
    private func calcResult(tag: Int) {
        guard arithmelticButton > 0 else { return }
        
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
        guard start else { return }
        guard numberTwo == 0 else { return }
        numberTwo = setupNumber()
    }
    
    private func setupNumber() -> Float {
        let text = labelResults.text ?? ""
        return Float(text) ?? 0
    }
    
    private func runCalculation(tag: Int) {
        switch tag {
        case 1: labelResults.text = "\(calculate(.division).clean())"
        case 2: labelResults.text = "\(calculate(.multiplication).clean())"
        case 3: labelResults.text = "\(calculate(.subtraction).clean())"
        default: labelResults.text = "\(calculate(.addition).clean())"
        }
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
        case 1: buttonCalcPress(button: buttonDivision)
        case 2: buttonCalcPress(button: buttonMultiplier)
        case 3: buttonCalcPress(button: buttonMinus)
        case 4: buttonCalcPress(button: buttonPlus)
        default: break
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
                             colorTitle: UIColor? = nil,
                             size: CGFloat? = nil,
                             tag: Int? = nil) -> UIButton {
        let button = UIButton(type: .system)
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.tintColor = colorTitle ?? .clear
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

extension CalculatorViewController {
    private func setupLabel(text: String? = nil, style: String? = nil,
                            size: CGFloat? = nil, alignment: NSTextAlignment? = nil,
                            color: UIColor? = nil, image: UIImage? = nil) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont(name: style ?? "", size: size ?? 0)
        label.textAlignment = alignment ?? .natural
        label.textColor = color
        
        if let image = image {
            label.addImage(image: image)
        }
        
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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

extension UILabel {
    func addImage(image: UIImage) {
        let attachment = NSTextAttachment()
        attachment.image = image
        
        let attachmentString = NSAttributedString(attachment: attachment)
        let string = NSMutableAttributedString(string: self.text ?? "", attributes: [:])
        
        string.append(attachmentString)
        self.attributedText = string
    }
}
