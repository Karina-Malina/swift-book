//
//  ViewController.swift
//  Home Work 2.1
//
//  Created by Karina Blinova on 01.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var button: UIButton!
    
    var counter = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("START", for: .normal)
        button.layer.cornerRadius = 5
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        redView.layer.cornerRadius = 100
        yellowView.layer.cornerRadius = 100
        greenView.layer.cornerRadius = 100
    }

    @IBAction func changeColorButton(_ sender: Any) {
        switch counter {
        case 0:
            button.setTitle("NEXT", for: .normal)
            redView.alpha = 1
            counter += 1
        case 1:
            redView.alpha = 0.3
            yellowView.alpha = 1
            counter += 1
        case 2:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            counter += 1
        case 3:
            greenView.alpha = 0.3
            redView.alpha = 1
            counter = 1
        default:
            print("Упс, что-то пошло не так")
        }
    }
    
}

