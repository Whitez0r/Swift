//
//  ViewController.swift
//  hw4
//
//  Created by Илья Мунгалов on 11.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) Создать массив из кортежей (Int, String).
        
        let myArray = [(2, "abcde"), (3, "abc"), (4, "a")]
        var newArray = [Int]()
        var filterNewArray = [(Int, String)]()

        
        let range = 0..<myArray.count

        // Пройти по элементам с помощью цикла for-in, создав Range от 0 до количества элементов массива, и возвести все Int в квадрат. (Лучше создать новый массив и результаты записать туда).
        for elements in range {
            if myArray[elements].0 != 0 {
                newArray.append(myArray[elements].0 * myArray[elements].0)
            }
        }
        
        print(newArray)
        
        // Пройти по элементам изначального массива с помощью цикла for-in, перебирая элементы, и записать в новый массив только четные элементы (не по порядку четные, а с четными Int’ами).
        for elements in range {
            if myArray[elements].0 % 2 == 0 {
                filterNewArray.append((myArray[elements].0, myArray[elements].1))
            }
        }
        
        print(filterNewArray)
        
        // (* Написать альтернативный вариант с функцией filter).
        let filterArray = myArray.filter { $0.0 % 2 == 0 }
        print(filterArray)
        
        // * С помощью функции sorted отсортировать изначальный массив по возрастанию строки кортежа.
        let sortedArray = myArray.sorted(by: { $0.1 < $1.1 })
        print(sortedArray)
    }
}
