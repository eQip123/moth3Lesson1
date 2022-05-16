//
//  ViewController.swift
//  moth3Lesson1
//
//  Created by Aidar on 15.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var midleView: UIView!
    
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var TextLabel: UILabel!
    
    enum Views {
    case top
    case middle
    case bottom
    }
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        TextLabel.text = "Нажмите кнопку"
        }
    
    @IBAction func button(_ sender: UIButton) {
        count += 1
        switch count {
        case 1:
            bottomView.backgroundColor = .white
            topView.backgroundColor = .red
            TextLabel.text = "Движение запрещено!"
        case 2:
            topView.backgroundColor = .white
            midleView.backgroundColor = .yellow
            TextLabel.text = "Приготовиться!"
        case 3:
            midleView.backgroundColor = .white
            bottomView.backgroundColor = .green
            TextLabel.text = "Движение разрешено!"
            count = 0
        default:
            TextLabel.text = "Не работает светофор"
        }
        }

}


//count += 1
//        if count == 1  {
//            bottomView.backgroundColor = .white
//            topView.backgroundColor = .red
//            TextLabel.text = "Движение запрещено!"
//
//        } else if  count == 2 {
//            topView.backgroundColor = .white
//            midleView.backgroundColor = .yellow
//            TextLabel.text = "Приготовиться!"
//
//        } else if count == 3 {
//            midleView.backgroundColor = .white
//            bottomView.backgroundColor = .green
//            TextLabel.text = "Движение разрешено!"
//            count = 0
//
//        }
