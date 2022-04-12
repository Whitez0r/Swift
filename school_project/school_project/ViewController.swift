//
//  ViewController.swift
//  school_project
//
//  Created by Илья Мунгалов on 06.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var classTextField: UITextField!
    
    var studentsArray: [(firstName: String, secondName: String, middleName: String, class: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    private func clearTextField() {
        firstNameTextField.text = ""
        secondNameTextField.text = ""
        middleNameTextField.text = ""
        classTextField.text = ""
    }
    
    @IBAction func addStudentButtonTap(_ sender: Any) {
        if let firstNameText = firstNameTextField.text, !firstNameText.isEmpty,
           let secondNameText = secondNameTextField.text, !secondNameText.isEmpty,
           let middleNameText = middleNameTextField.text,
           let classText = classTextField.text {
            studentsArray.append((firstName: firstNameText, secondName: secondNameText, middleName: middleNameText, class: classText))
        }
        
        clearTextField()
    }
    
    @IBAction func listStudentButtonTap(_ sender: Any) {
        for student in studentsArray {
            print(" Имя: \(student.firstName)\n Фамилия: \(student.secondName)\n Отчество: \(student.middleName)\n Класс: \(student.class) \n \n")
        }
    }
    
}

