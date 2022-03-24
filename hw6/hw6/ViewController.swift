//
//  ViewController.swift
//  hw6
//
//  Created by Илья Мунгалов on 19.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //  1) Дан массив целых чисел. Разделите его на два массива, где в первом массиве будут лежать четные числа, а во втором - нечетные.
        
        let intArray = [2, 3, 4, 5, 6, 7, 8, 9, 10]
        var evenArray = intArray.filter({ $0 % 2 == 0 })
        var oddArray = intArray.filter({ $0 % 2 != 0 })
        
        print(evenArray)
        print(oddArray)
        
        // second option

        evenArray = []
        oddArray = []

        for element in intArray {
            if element % 2 == 0 {
                evenArray.append(element)
            }
            else {
                oddArray.append(element)
            }
        }

        print(evenArray)
        print(oddArray)
        
        // 2) Дан массив опциональных строк. Посчитайте, сколько букв каждая буква встречается во всех словах.
        let optionalStringArray: [String?] = ["aaabbbcde", "nil", "hhhhhh"]
        
        countNumberRepeatedLettersOptionalStringArray(optionalStringArray)
        
        // 3) Реализуйте математические функции (+, -, *, /, возведение в степень) для опциональных чисел (тип данных на ваш выбор). Используйте if let, guard let и ?? каждую хотя бы 1 раз.
        print(add(3, to: 5))
        print(add(4, to: nil))
        print(multiply(3, 5))
        print(multiply(3, nil))
        print(myPow(3, 5))
        print(myPow(3, nil))
        print(subtract(3, 5))
        print(subtract(3, nil))
        print(divide(3, 5))
        print(divide(3, nil))
        
        // 4) * Создайте функцию, которая проверяет является ли переданная строка палиндромом. Строка может быть как одним словом (mom) так и предложением (Too bad I hid a boot). В предложении вы должны игнорировать пробелы, большие или маленькие это буквы и знаки препинания при определении полиндрома.
        
        print(checkPalindrom("Too bad I hid a boot!"))
        print(checkPalindrom("Too, bad, I, hid, a,-?: boot!"))
   }

    func add(_ firstNumber: Int?, to secondNumber: Int?) -> String {
        guard let firstNumber = firstNumber,
              let secondNumber = secondNumber else {
            return "Одно из значений не число"
        }
        return String(firstNumber + secondNumber)
    }
    
    func multiply(_ firstNumber: Int?, _ secondNumber: Int?) -> String {
        if let firstNumber = firstNumber,
           let secondNumber = secondNumber {
            return String(firstNumber * secondNumber)
        }
        return "Одно из значений не число"
    }
    
    func myPow(_ firstNumber: Int?, _ secondNumber: Int?) -> String {
        guard let firstNumber = firstNumber,
              let secondNumber = secondNumber else {
            return "Одно из значений не число"
        }
        return String(pow(Double(firstNumber), Double(secondNumber)))
    }
    
    func subtract(_ firstNumber: Int?, _ secondNumber: Int?) -> String {
        String((firstNumber ?? 0) - (secondNumber ?? 0))
    }
    
    func divide(_ firstNumber: Double?, _ secondNumber: Double?) -> String {
        guard let firstNumber = firstNumber,
              let secondNumber = secondNumber else {
            return "Одно из значений не число"
        }
        return String(firstNumber / secondNumber)
    }
    
    func createCharacterArray(_ stringArray: [String?]) -> [Character] {
        var characterArray = [Character]()

        for element in stringArray {
            guard let element = element else {
                return [Character]()
            }

            for char in element {
                characterArray.append(char)
            }
        }
        return characterArray
    }
    
    func countNumberRepeatedLettersOptionalStringArray(_ optionalStringArray: [String?]) {
        let characterArray = createCharacterArray(optionalStringArray)
        
        let result = characterArray.reduce(into: [Character: Int]()) { partialResult, element in
            partialResult[element, default: 0] += 1}
        
        print(result)
    }
    
    func checkPalindrom(_ polindromString: String?) -> String {
        guard let polindromString = polindromString else {
            return "Введите строку"
        }
        let charactersToRemove = Set(Array(".:?,-!"))
        let lowerWithoutWhitespacesString = polindromString.filter{ !$0.isWhitespace }.lowercased().reduce("") { let str = String($1); return $0 + (charactersToRemove.contains($1) ? "" : str) }
        var reverceString = String()
        
        for element in lowerWithoutWhitespacesString {
            reverceString.insert(element, at: reverceString.startIndex)
        }
                
        if lowerWithoutWhitespacesString == reverceString {
            return "Строка палиндромом"
        }
            return "Строка не палиндромом"
    }

}

