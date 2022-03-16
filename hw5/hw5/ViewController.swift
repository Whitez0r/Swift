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
        var cityDictionary: [String: [String]]
        cityDictionary = [
            "Moscow": ["Сapital of Russia", "Eurasia"],
            "Minsk": ["Сapital of Belarus", "Eurasia"],
            "NY": ["Finance center", "North America"],
            "Beijing": ["Сapital of China", "Eurasia"]
        ]
        
        //1) Добавить новый элемент в словарь, поменять два существующих элемента в словаре, удалить один элемент из словаря.
        cityDictionary["Capetown"] = ["Сapital of South Africa", "Africa"]
        print(cityDictionary)
        
        cityDictionary["Moscow"] = ["Financial center of Russia", "Eurasia"]
        cityDictionary["NY"] = ["The Big Apple", "North America"]
        print(cityDictionary)
        
        cityDictionary["NY"] = nil
        print(cityDictionary)
        
        //2) Создать отдельный словарь с названием городов/стран с длиной более 6 букв.
        let countryDictionary = [
            "Georgia",
            "Azerbaijan",
            "United Kingdom"
        ]
        
        print(countryDictionary)
        
        //3) Создать массив интересных фактов в формате (“название города/страны: факт”), отсортировав их по длине строки по убыванию.
        let interestingFactsArray = ["Capetown: Сapital of South Africa", "Moscow: Financial center of Russia", "Minsk: Сapital of Belarus", "Beijing: Сapital of China"]
        print(interestingFactsArray.sorted(by: { $0 > $1 }))
        
        //4) * Отсортировать страны/города по континенту. Отсортированные данные должны лежать в одном объекте (сами придумайте, в каком). В итоге, у вас должна быть возможность получить все страны/города переданному континенту.
        var continent: [String: String]
         continent = [
             "Africa": "Egypt, Nigeria",
             "Asia": "Azerbaijan, India",
             "Europe": "Austria, Ireland",
         ]
        print(continent["Asia"])
        
        //Дан массив проверить, есть ли в массиве дубликаты.
        let myArray = [1, 2, 3, 4, 5, 6, 6]
        if myArray.count > Set(myArray).count {
            print("Дубликаты есть")
        }
        else {
            print("Дубликотов нет")
        }
    }
}

