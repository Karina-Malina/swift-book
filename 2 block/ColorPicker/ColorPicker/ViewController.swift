//
//  ViewController.swift
//  ColorPicker
//
//  Created by Karina Blinova on 05.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorPickerView: UIView!
    
    @IBOutlet var redTextLabel: UILabel!
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenTextLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueTextLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    var redColor: CGFloat = 0.0
    var greenColor: CGFloat = 0.0
    var blueColor: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTextLabel.text = "Red"
        greenTextLabel.text = "Green"
        blueTextLabel.text = "Blue"
        
        redValueLabel.text = "0"
        greenValueLabel.text = "0"
        blueValueLabel.text = "0"
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        colorPickerView.backgroundColor = UIColor(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255, alpha: 1)
        
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(Int(redSlider.value))
        redSlider.minimumTrackTintColor = .red
        redColor = CGFloat(redSlider.value)
        colorPickerView.backgroundColor = UIColor(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255, alpha: 1)
    }
   
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(Int(greenSlider.value))
        greenSlider.minimumTrackTintColor = .green
        greenColor = CGFloat(greenSlider.value)
        colorPickerView.backgroundColor = UIColor(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255, alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(Int(blueSlider.value))
        blueSlider.minimumTrackTintColor = .blue
        blueColor = CGFloat(blueSlider.value)
        colorPickerView.backgroundColor = UIColor(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255, alpha: 1)
    }
}

