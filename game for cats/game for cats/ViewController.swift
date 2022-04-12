//
//  ViewController.swift
//  game for cats
//
//  Created by Илья Мунгалов on 01.04.2022.
//
//  2. Игрушка для котиков - появление разноцветного кружочка, по тапу исчезает и появляется в новом месте (кодом)


import UIKit

class ViewController: UIViewController {

    let myButton = UIButton()
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        createButton()
        print(myButton.bounds.width)
    }
    
    private func createButton() {
        myButton.frame = CGRect(x: (screenWidth / 2), y: (screenHeight / 2), width: 100, height: 100)
        myButton.backgroundColor = .yellow
        myButton.layer.cornerRadius = myButton.frame.width / 2
        myButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(myButton)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        myButton.frame.origin.x = CGFloat.random(in: myButton.bounds.width...(screenWidth - myButton.bounds.width))
        myButton.frame.origin.y = CGFloat.random(in: myButton.bounds.height...(screenHeight - myButton.bounds.height))
    }
    
}

