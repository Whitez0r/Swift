//
//  ViewController.swift
//  hw5
//
//  Created by Илья Мунгалов on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Создать словарь, где ключ - название города/страны, значение - интересный факт и континент, где распорожен город/страна (подумайте, какой тип данных лучше использовать для значения).
        var cityDictionary: [String: (interestingFact: String, continent: String)]
        cityDictionary = [
            "Moscow": ("Сapital of Russia", "Eurasia"),
            "Minsk": ("Сapital of Belarus", "Eurasia"),
            "NY": ("Finance center", "North America"),
            "Beijing": ("Сapital of China", "Eurasia")
        ]
        
        //1) Добавить новый элемент в словарь, поменять два существующих элемента в словаре, удалить один элемент из словаря.
        cityDictionary["Capetown"] = ("Сapital of South Africa", "Africa")
        print(cityDictionary)
        
        cityDictionary["Moscow"] = ("Financial center of Russia", "Eurasia")
        cityDictionary["NY"] = ("The Big Apple", "North America")
        print(cityDictionary)
        
        cityDictionary["Minsk"] = nil
        print(cityDictionary)
        
        //2) Создать отдельный словарь с названием городов/стран с длиной более 6 букв.
        var sortedCityDictionary: [String: (interestingFact: String, continent: String)] = [:]
        
        for (key, value) in cityDictionary {
            if key.count >= 6 {
                sortedCityDictionary[key] = value
            }
        }
        //2 Второй вариант
        let filterData = cityDictionary.filter({ $0.key.count > 6 })
        print(filterData)
        print(sortedCityDictionary)
        
        //3) Создать массив интересных фактов в формате (“название города/страны: факт”), отсортировав их по длине строки по убыванию.
        var interestingFactsArray = [String]()
        for (key, value) in cityDictionary {
            interestingFactsArray.append("\(key): \(value.interestingFact)")
        }
        print(interestingFactsArray.sorted(by: { $0.count < $1.count } ))
        
        // map
        let facts = cityDictionary.map({ "\($0.key): \($0.value.interestingFact)" })
        print(facts)
        
        //4) * Отсортировать страны/города по континенту. Отсортированные данные должны лежать в одном объекте (сами придумайте, в каком). В итоге, у вас должна быть возможность получить все страны/города переданному континенту.
        var continent = [String: [String]]()

        for element in cityDictionary {
            continent[element.value.continent, default: []] += [element.key]
        }
        print(continent)
        
        let reduceContinints = cityDictionary.reduce(into: [String: [String]]()) { $0[$1.value.continent, default: []] += [$1.key] }
        reduceContinints["Africa"]
        
        //Дан массив проверить, есть ли в массиве дубликаты.
        let myArray = [1, 2, 3, 4, 5, 6, 6]
        if myArray.count > Set(myArray).count {
            print("Дубликаты есть")
        }
        else {
            print("Дубликотов нет")
        }
       
        //Find duplicated
        var numbersDictionary = [Int: Int]()
        for element in myArray {
            numbersDictionary[element, default: 0] += 1
        }
        print(numbersDictionary)
        
        let duplicatedNumbers = numbersDictionary.filter { $0.value > 1 }.map({ $0.key })
        
        // short
//        myArray.reduce(into: <#T##Result#>, <#T##updateAccumulatingResult: (inout Result, Int) throws -> ()##(inout Result, Int) throws -> ()##(_ partialResult: inout Result, Int) throws -> ()#>)
    }
}

