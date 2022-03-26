//
//  ViewController.swift
//  hw_3
//
//  Created by Илья Мунгалов on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
             
        /* Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций, одинаковые названия для функций, разные типы параметров)*/
        
        sum(3, 4)
        sum(3.4, 5)
        sum(4, 3.5)
        sum(23.43, 23.64)
        
        subtraction(5, 4)
        subtraction(6.4, 5)
        subtraction(6, 3.5)
        subtraction(245.43, 23.64)
        
        multiply(3, 4)
        multiply(3.4, 5)
        multiply(4, 3.5)
        multiply(23.43, 23.64)
        
       division(5, 4)
       division(6.4, 5)
       division(6, 3.5)
       division(245.43, 23.64)
        
        // Вычислить сумму цифр четырехзначного числа
        sumFourDigitNumberDigits(number: 9999)
        
        // Функция сравнения строк
        compareStrings(firstString: "absfda", secondString: "absfda")
        
        // Циклический вызов функций - поломать приложение
        //errorRecursion()
        
        // Функция возведения в степень с дефолтным параметром
        powNumber(5)
        
        // Функция вычисления факториала числа (рекурсия)
        factorial(10)
        
    }

    func sum(_ firstNumber: Int,_  secondNumber: Int) {
        let numberSum = firstNumber + secondNumber
        print("\(firstNumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func sum(_ firstNumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstNumber) + secondNumber
        print("\(firstNumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func sum(_ firstNumber: Double,_  secondNumber: Int) {
        let numberSum = firstNumber + Double(secondNumber)
        print("\(firstNumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func sum(_ firstNumber: Double,_  secondNumber: Double) {
        let numberSum = firstNumber + secondNumber
        print("\(firstNumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstNumber: Int,_  secondNumber: Int) {
        let numberSum = firstNumber - secondNumber
        print("\(firstNumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstNumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstNumber) - secondNumber
        print("\(firstNumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstNumber: Double,_  secondNumber: Int) {
        let numberSum = firstNumber - Double(secondNumber)
        print("\(firstNumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstNumber: Double,_  secondNumber: Double) {
        let numberSum = firstNumber - secondNumber
        print("\(firstNumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstNumber: Int,_  secondNumber: Int) {
        let numberSum = firstNumber * secondNumber
        print("\(firstNumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstNumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstNumber) * secondNumber
        print("\(firstNumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstNumber: Double,_  secondNumber: Int) {
        let numberSum = firstNumber * Double(secondNumber)
        print("\(firstNumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstNumber: Double,_  secondNumber: Double) {
        let numberSum = firstNumber * secondNumber
        print("\(firstNumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func division(_ firstNumber: Int,_  secondNumber: Int) {
        let numberSum = Double(firstNumber) / Double(secondNumber)
        print("\(firstNumber) / \(secondNumber) = \(numberSum) ")
    }
    
    func division(_ firstNumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstNumber) / secondNumber
        print("\(firstNumber) / \(secondNumber) = \(numberSum) ")
    }
    
    func division(_ firstNumber: Double,_  secondNumber: Int) {
        let numberSum = firstNumber / Double(secondNumber)
        print("\(firstNumber) / \(secondNumber) = \(numberSum) ")
    }
    
    func division(_ firstNumber: Double,_  secondNumber: Double) {
        let numberSum = firstNumber / secondNumber
        print("\(firstNumber) / \(secondNumber) = \(numberSum) ")
    }

    func compareStrings(firstString: String, secondString: String) {
        if firstString > secondString {
            print("\(firstString) > \(secondString)")
        }
        else if firstString < secondString {
            print("\(firstString) < \(secondString)")
        }
        else {
            print("\(firstString) = \(secondString)")
        }
    }
    
    func sumFourDigitNumberDigits(number: Int) {
        let firstNumber = number / 1000
        let secondNumber = (number / 100) % 10
        let thirdNumber = (number / 10) % 10
        let fourthNumber = number % 10
        let digitsSum = firstNumber + secondNumber + thirdNumber + fourthNumber
        print("Сумма \(number) = \(digitsSum)")
        
    }
    
    func errorRecursion() {
        print("error")
        errorRecursion()
    }
    
    func powNumber(_ firstNumber: Int, _ secondNumber: Int = 2) {
        let powNumber = pow(Double(firstNumber), Double(secondNumber))
        print("\(firstNumber) в степени \(secondNumber) = \(powNumber)")
    }
    
    func factorial(_ numberFactorial: Int) {
        var resultFactorial = 1
        var temporaryElement = numberFactorial
        while temporaryElement >= 1 {
            resultFactorial = temporaryElement * resultFactorial
            temporaryElement = temporaryElement - 1
        }
        print("Факториал \(numberFactorial) = \(resultFactorial)")
    }
    
}

