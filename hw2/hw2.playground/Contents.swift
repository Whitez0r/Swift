import Foundation
// Сумма отдельно целых и отдельно дробных частей чисел 2.5, 9.7, 6.9, 8.2

let firstNumber = 2.5
let secondNumber = 9.7
let thirdNumber = 6.9
let fourthNumber = 8.2

var intSum = Int(secondNumber) + Int(firstNumber) + Int(thirdNumber) + Int(fourthNumber)
print(intSum)

var floatSum = (Float(secondNumber) - Float(Int(secondNumber))) + (Float(firstNumber) - Float(Int(firstNumber))) + (Float(thirdNumber) - Float(Int(thirdNumber))) + (Float(fourthNumber) - Float(Int(fourthNumber)))
print(floatSum)

var allSum = Float(intSum) + floatSum
print(allSum)

// Проверка, является ли число четным (проверяем только целые числа, дробные не надо)

let smtNumber = 4

if smtNumber % 2 == 0 {
    print("Число \(smtNumber) четное")
}
else {
    print("Число \(smtNumber) нечетное")
}

