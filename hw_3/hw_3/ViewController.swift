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
        
        summa(3, 4)
        summa(3.4, 5)
        summa(4, 3.5)
        summa(23.43, 23.64)
        
        subtraction(5, 4)
        subtraction(6.4, 5)
        subtraction(6, 3.5)
        subtraction(245.43, 23.64)
        
        multiply(3, 4)
        multiply(3.4, 5)
        multiply(4, 3.5)
        multiply(23.43, 23.64)
        
        devision(5, 4)
        devision(6.4, 5)
        devision(6, 3.5)
        devision(245.43, 23.64)
        
        // Вычислить сумму цифр четырехзначного числа
        sumFour(number: 9999)
        
        // Функция сравнения строк
        stringComparison(firstString: "absfda", secondString: "absfda")
        
        // Циклический вызов функций - поломать приложение
        //errorRecursion()
        
        // Функция возведения в степень с дефолтным параметром
        numberPow(5)
        
        // Функция вычисления факториала числа (рекурсия)
        factorial(10)
        
    }

    func summa(_ firstnumber: Int,_  secondNumber: Int) {
        let numberSum = firstnumber + secondNumber
        print("\(firstnumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func summa(_ firstnumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstnumber) + secondNumber
        print("\(firstnumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func summa(_ firstnumber: Double,_  secondNumber: Int) {
        let numberSum = firstnumber + Double(secondNumber)
        print("\(firstnumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func summa(_ firstnumber: Double,_  secondNumber: Double) {
        let numberSum = firstnumber + secondNumber
        print("\(firstnumber) + \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstnumber: Int,_  secondNumber: Int) {
        let numberSum = firstnumber - secondNumber
        print("\(firstnumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstnumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstnumber) - secondNumber
        print("\(firstnumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstnumber: Double,_  secondNumber: Int) {
        let numberSum = firstnumber - Double(secondNumber)
        print("\(firstnumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func subtraction(_ firstnumber: Double,_  secondNumber: Double) {
        let numberSum = firstnumber - secondNumber
        print("\(firstnumber) - \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstnumber: Int,_  secondNumber: Int) {
        let numberSum = firstnumber * secondNumber
        print("\(firstnumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstnumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstnumber) * secondNumber
        print("\(firstnumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstnumber: Double,_  secondNumber: Int) {
        let numberSum = firstnumber * Double(secondNumber)
        print("\(firstnumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func multiply(_ firstnumber: Double,_  secondNumber: Double) {
        let numberSum = firstnumber * secondNumber
        print("\(firstnumber) * \(secondNumber) = \(numberSum) ")
    }
    
    func devision(_ firstnumber: Int,_  secondNumber: Int) {
        let numberSum = Double(firstnumber) / Double(secondNumber)
        print("\(firstnumber) / \(secondNumber) = \(numberSum) ")
    }
    
    func devision(_ firstnumber: Int,_  secondNumber: Double) {
        let numberSum = Double(firstnumber) / secondNumber
        print("\(firstnumber) / \(secondNumber) = \(numberSum) ")
    }
    
    func devision(_ firstnumber: Double,_  secondNumber: Int) {
        let numberSum = firstnumber / Double(secondNumber)
        print("\(firstnumber) / \(secondNumber) = \(numberSum) ")
    }
    
    func devision(_ firstnumber: Double,_  secondNumber: Double) {
        let numberSum = firstnumber / secondNumber
        print("\(firstnumber) / \(secondNumber) = \(numberSum) ")
    }

    func stringComparison(firstString: String, secondString: String) {
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
    
    func sumFour(number: Int) {
        let firstNumber = number / 1000
        let secondNumber = (number / 100) % 10
        let thirdNumber = (number / 10) % 10
        let fourthNumber = number % 10
        let sumFour = firstNumber + secondNumber + thirdNumber + fourthNumber
        print("Сумма \(number) = \(sumFour)")
        
    }
    
    func errorRecursion() {
        print("error")
        errorRecursion()
    }
    
    func numberPow(_ firstNumber: Int, _ secondNumber: Int = 2) {
        let powNumber = pow(Double(firstNumber), Double(secondNumber))
        print("\(firstNumber) в степени \(secondNumber) = \(powNumber)")
    }
    
    func factorial(_ numberFactorial: Int) {
        var resultFactorial = 1
        var tamporyElement = numberFactorial
        while tamporyElement >= 1 {
            resultFactorial = tamporyElement * resultFactorial
            tamporyElement = tamporyElement - 1
        }
        print("Фасториал \(numberFactorial) = \(resultFactorial)")
    }
    
}

