//
//  ViewController.swift
//  two_squares
//По нажатию кнопки на экран добавляется 2 разноцветных квадрата с фиксированной стороной. Квадраты не пересекаются

//  Created by Илья Мунгалов on 12.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstSquareView: UIView!
    @IBOutlet weak var secondSquareView: UIView!
    
    @IBOutlet weak var randomSquareButtonLabel: UIButton!
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstSquareView.frame.size = CGSize(width: 100, height: 100)
        secondSquareView.frame.size = CGSize(width: 100, height: 100)
        
        randomSquareButtonLabel.frame = CGRect(x: (screenWidth / 2 - 50), y: screenHeight - 150, width: 100, height: 100)
    }

    @IBAction func randomSquareButtonClick(_ sender: Any) {
        firstSquareView.isHidden = false
        secondSquareView.isHidden = false
        
        randomSquare()
        
        while true {
            if !firstSquareView.frame.intersects(secondSquareView.frame) { return }
            
            randomSquare()
        }
    }
    
    private func randomSquare() {
        firstSquareView.frame.origin.x = CGFloat.random(in: firstSquareView.bounds.width...(screenWidth - firstSquareView.bounds.width))
        firstSquareView.frame.origin.y = CGFloat.random(in: firstSquareView.bounds.height...((screenHeight - 150) - firstSquareView.bounds.height))
        secondSquareView.frame.origin.y = CGFloat.random(in: secondSquareView.bounds.height...((screenHeight - 150) - firstSquareView.bounds.height))
        secondSquareView.frame.origin.x = CGFloat.random(in: secondSquareView.bounds.width...(screenWidth - secondSquareView.bounds.width ))
    }

}

