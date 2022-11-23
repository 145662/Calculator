//
//  ViewController.swift
//  Calculator
//
//  Created by Nataliya Glazkova on 10.11.2022.
//

import UIKit

class ViewController: UIViewController {

    var operand = ""
    var numberOne = ""
    var numberTwo = ""
  
    @IBOutlet weak var resultLabel: UILabel!
    
    /* при нажатии на цифры, значение будет передаваться в переменную numberOne и отображаться элементе resultLabel. Далее если будет нажата кнопка с операндом значение будет записываться в переменную operand, и пользователь может ввести второе число, которое в свою очередь будет записываться в переменную numberTwo. После нажатия на кнопку равно будет выводит итог в resultLabel*/
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!;
            resultLabel.text = numberOne
    } else {
        numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    // сделаем функцию для обнуления переменных и Label
            
    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    // сделаем обработку нажатия на клавиши операндов +,-,/,*
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = (sender.titleLabel?.text)!;
    }
    
    // сделаем функцию для отображения результата
    @IBAction func resultAction (_sender: Any) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! /
                     Double(numberTwo)!
        case "*":
           result = Double(numberOne)! *
                    Double(numberTwo)!
        case "-":
           result = Double(numberOne)! -
                    Double(numberTwo)!
        case "+":
           result = Double(numberOne)! +
                    Double(numberTwo)!
        default:
            break
            
        }
       
        if result.truncatingRemainder(dividingBy: 1.0) == 00 {
            resultLabel.text = String(Int(result))
        } else {
            resultLabel.text = String(result)
        }
    }}

