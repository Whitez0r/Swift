//
//  ViewController.swift
//  hw7
//
//  Created by Илья Мунгалов on 23.03.2022.
//

/* Создать класс Школа с параметром массив учеников. У ученика хранить имя, фамилию, номер класса, кортеж название предмета-оценка. У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к некоторым из них. Написать функцию для ученика, выводящую информацию о студенте в формате
    “Фамилия Имя (Класс)  = [firstStudent, secondStudent]
    предмет: оценка
    предмет: оценка”. Написать функцию для школы, которая выводит информацию о всех учениках.
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let firstStudent = Student(name: "Илья", surname: "Мунгалов", numberRoom: 409, subjectGrade: ["Математика": 8, "Английский язык": 5])
        let secondStudent = Student(name: "Миша", surname: "Целуйко", numberRoom: 409, subjectGrade: ["Английский язык": 5])
        let thirdStudent = Student(name: "Данила", surname: "Бакулин")
        let fourthStudent = Student(name: "Полина", surname: "Хомко", numberRoom: 409, subjectGrade: ["Математика": 10, "Исит": 8])
        let fifthStudent = Student(name: "Настя", surname: "Супрун", subjectGrade: ["Математика": 10, "Исит": 8, "АИП": 4])
    
        let school = School(studentArray: [firstStudent, secondStudent, thirdStudent, fourthStudent, fifthStudent ])

        school.printInfoSchool()
    }
    
}

class School {
    var studentArray: [Student]
    
    init(studentArray: [Student] ) {
        self.studentArray = studentArray
    }
    
    func printInfoSchool() {
        for student in studentArray {
            print("Имя: \(student.name)\n" + "Фамилия: \(student.surname)\n" + "(\(student.numberRoom) кабинет)\n" + "\(student.subjectGrade)")
        }
     }
}

class Student {
    let name: String
    let surname: String
    let numberRoom: Int
    let subjectGrade: [String: Int]
    
    init(name: String, surname: String, numberRoom: Int = 0, subjectGrade: [String: Int] = ["Оценки отсутствуют": 0]) {
        self.name = name
        self.surname = surname
        self.numberRoom = numberRoom
        self.subjectGrade = subjectGrade
        
    }
    
    func printInfo() {
        let info = "Имя: \(name)\n" + "Фамилия: \(surname)\n" + "(\(numberRoom) кабинет)\n" + "\(subjectGrade)"
        
        print(info)
    }
}
