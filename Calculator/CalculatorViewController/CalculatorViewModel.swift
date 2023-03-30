//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Marat Shagiakhmetov on 02.03.2023.
//

import UIKit

protocol CalculatorViewModelProtocol {
    var start: Bool { get }
    var isNumberFirst: Bool { get }
    var numberFirst: Float { get }
    var numberSecond: Float { get }
    var arithmeticButton: Int { get }
    var clean: String { get }
    var isComma: Bool { get }
    var result: String { get }
    var dataDidChange: ((CalculatorViewModelProtocol) -> Void)? { get set }
    
    var buttonDivision: UIColor { get }
    var buttonMultiplier: UIColor { get }
    var buttonSubtract: UIColor { get }
    var buttonAdd: UIColor { get }
    
    var imageDivision: UIColor { get }
    var imageMultiplier: UIColor { get }
    var imageSubtract: UIColor { get }
    var imageAdd: UIColor { get }
    
    init(start: Bool, isNumberFirst: Bool, numberFirst: Float, numberSecond: Float,
         arithmeticButton: Int, result: String, clean: String, isComma: Bool)
    
    func buttonCleanInput()
    func buttonNumberInput(tag: Int)
    func plusMinus(text: String)
    func percentCalc(text: String)
    func calc(tag: Int)
    func comma()
}

class CalculatorViewModel: CalculatorViewModelProtocol {
    var buttonDivision: UIColor = UIColor.Color.red {
        didSet {
            dataDidChange?(self)
        }
    }
    var buttonMultiplier: UIColor = UIColor.Color.red {
        didSet {
            dataDidChange?(self)
        }
    }
    var buttonSubtract: UIColor = UIColor.Color.red {
        didSet {
            dataDidChange?(self)
        }
    }
    var buttonAdd: UIColor = UIColor.Color.red {
        didSet {
            dataDidChange?(self)
        }
    }
    var imageDivision: UIColor = UIColor.Color.white {
        didSet {
            dataDidChange?(self)
        }
    }
    var imageMultiplier: UIColor = UIColor.Color.white {
        didSet {
            dataDidChange?(self)
        }
    }
    var imageSubtract: UIColor = UIColor.Color.white {
        didSet {
            dataDidChange?(self)
        }
    }
    var imageAdd: UIColor = UIColor.Color.white {
        didSet {
            dataDidChange?(self)
        }
    }
    
    var start: Bool {
        didSet {
            dataDidChange?(self)
        }
    }
    var isNumberFirst: Bool {
        didSet {
            dataDidChange?(self)
        }
    }
    var numberFirst: Float {
        didSet {
            dataDidChange?(self)
        }
    }
    var numberSecond: Float {
        didSet {
            dataDidChange?(self)
        }
    }
    var arithmeticButton: Int {
        didSet {
            dataDidChange?(self)
        }
    }
    var clean: String {
        didSet {
            dataDidChange?(self)
        }
    }
    var isComma: Bool {
        didSet {
            dataDidChange?(self)
        }
    }
    var result: String {
        didSet {
            dataDidChange?(self)
        }
    }
    
    var dataDidChange: ((CalculatorViewModelProtocol) -> Void)?
    
    required init(start: Bool, isNumberFirst: Bool, numberFirst: Float,
                  numberSecond: Float, arithmeticButton: Int, result: String,
                  clean: String, isComma: Bool) {
        self.start = start
        self.isNumberFirst = isNumberFirst
        self.numberFirst = numberFirst
        self.numberSecond = numberSecond
        self.arithmeticButton = arithmeticButton
        self.result = result
        self.clean = clean
        self.isComma = isComma
    }
    
    func buttonCleanInput() {
        switch arithmeticButton {
        case 1...4:
            buttonCalcPress()
        default:
            resetLabelResults()
        }
    }
    
    private func buttonCalcPress() {
        if clean == "C" {
            setupButtonCalcPress()
            resetLabelResults()
        } else {
            checkResetButtons()
            resetAllConfiguration()
        }
    }
    
    private func resetLabelResults() {
        result = "0"
        checkStart()
        resetNumberOne()
        isComma = false
        
        guard clean == "C" else { return }
        clean = "AC"
    }
    
    private func setupButtonCalcPress() {
        guard !start else { return }
        setupButtonCalcPress(tag: arithmeticButton)
    }
    
    private func resetAllConfiguration() {
        arithmeticButton = 0
        numberFirst = 0
        numberSecond = 0
    }
    
    func buttonNumberInput(tag: Int) {
        numbersInput(tag: tag)
        checkResetButtons()
        
        guard result.count > 9 else { return }
        result.removeLast()
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
        result = text
        
        setupNumber(text: text)
        
        guard clean == "AC" else { return }
        clean = "C"
    }
    
    private func inputCountinue(tag: Int) {
        let text = result
        let newText = checkText(text: text, tag: tag)
        result = "\(newText)"
        
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
        if isNumberFirst {
            numberFirst = number
        } else {
            numberSecond = number
        }
    }
    
    func plusMinus(text: String) {
        var text = convert(text)
        text.negate()
        checkSetupNumber(number: text)
        result = text.clean()
    }
    
    private func convert(_ text: String) -> Float {
        Float(text) ?? 0
    }
    
    func percentCalc(text: String) {
        print(text)
        var value: Float
        if isNumberFirst {
            value = convert(text) / 100
        } else {
            value = numberFirst * convert(text) / 100
        }
        checkSetupNumber(number: value)
        result = "\(value.clean())"
    }
    
    func calc(tag: Int) {
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
        isComma = false
        
        arithmeticButton = tag
        setupButtonCalcPress(tag: tag)
    }
    
    private func checkButtonAc() {
        guard clean == "AC" else { return }
        result = numberFirst.clean()
    }
    
    private func checkNumberOne() {
        guard isNumberFirst else { return }
        isNumberFirst.toggle()
    }
    
    private func checkArithmeticOperator() {
        guard !isNumberFirst else { return }
        guard arithmeticButton > 0 else { return }
        guard !start else { return }
        runCalculation(tag: arithmeticButton)
    }
    
    private func checkResetButtons() {
        guard arithmeticButton > 0 else { return }
        
        buttonDivision = UIColor.Color.red
        buttonMultiplier = UIColor.Color.red
        buttonSubtract = UIColor.Color.red
        buttonAdd = UIColor.Color.red
        
        imageDivision = UIColor.Color.white
        imageMultiplier = UIColor.Color.white
        imageSubtract = UIColor.Color.white
        imageAdd = UIColor.Color.white
    }
    
    private func checkStart() {
        guard !start else { return }
        start.toggle()
    }
    
    private func calcResult(tag: Int) {
        guard arithmeticButton > 0 else { return }
        
        checkNumberTwo()
        runCalculation(tag: tag)
        
        checkStart()
        resetNumberOne()
        isComma = false
    }
    
    private func resetNumberOne() {
        guard !isNumberFirst else { return }
        isNumberFirst.toggle()
    }
    
    private func checkNumberTwo() {
        guard !isNumberFirst else { return }
        numberSecond = convert(result)
        checkResetButtons()
    }
    
    private func runCalculation(tag: Int) {
        switch tag {
        case 1: result = "\(calculate(.division).clean())"
        case 2: result = "\(calculate(.multiplication).clean())"
        case 3: result = "\(calculate(.subtraction).clean())"
        default: result = "\(calculate(.addition).clean())"
        }
        
        guard result.count > 7 else { return }
        let text = String(format: "%e", numberFirst)
        result = text
    }
    
    private func calculate(_ calculate: Calculate) -> Float {
        var result = numberFirst
        
        switch calculate {
        case .division: result /= numberSecond
        case .multiplication: result *= numberSecond
        case .subtraction: result -= numberSecond
        case .addition: result += numberSecond
        }
        numberFirst = result
        
        return result
    }
    
    private func setupButtonCalcPress(tag: Int) {
        switch tag {
        case 1:
            buttonDivision = UIColor.Color.white
            imageDivision = UIColor.Color.red
        case 2:
            buttonMultiplier = UIColor.Color.white
            imageMultiplier = UIColor.Color.red
        case 3:
            buttonSubtract = UIColor.Color.white
            imageSubtract = UIColor.Color.red
        case 4:
            buttonAdd = UIColor.Color.white
            imageAdd = UIColor.Color.red
        default: break
        }
    }
    
    func comma() {
        if !start && !isComma {
            isComma = true
            let text = result
            result = text + "."
        } else if start && !isComma {
            result = "0."
        }
    }
}
