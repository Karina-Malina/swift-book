//
//  ViewController.swift
//  ColorPicker
//
//  Created by Karina Blinova on 05.12.2020.
//

import UIKit

protocol ColorPickerViewControllerDelegate: AnyObject {
    func showSelectedColor(color: UIColor)
}

class ColorPickerViewController: UIViewController, UITextFieldDelegate {
    
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
    
    @IBOutlet var doneButton: UIButton!
    
    var redColor = CGFloat()
    var greenColor = CGFloat()
    var blueColor = CGFloat()
    
    weak var delegate: ColorPickerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTextLabel.text = "Red"
        greenTextLabel.text = "Green"
        blueTextLabel.text = "Blue"
        
        redValueLabel.text = String(Int(redColor))
        greenValueLabel.text = String(Int(greenColor))
        blueValueLabel.text = String(Int(blueColor))
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = Float(redColor)
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = Float(greenColor)
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = Float(blueColor)
        
        doneButton.setTitle("Done", for: .normal)
        doneButton.setTitleColor(.black, for: .normal)
        
        colorPickerView.backgroundColor = UIColor(red: redColor / 255,
                                                  green: greenColor / 255,
                                                  blue: blueColor / 255,
                                                  alpha: 1)
        colorPickerView.layer.cornerRadius = 10
        
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(Int(redSlider.value))
        redColor = CGFloat(redSlider.value)
        setViewColor()
    }
   
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(Int(greenSlider.value))
        greenColor = CGFloat(greenSlider.value)
        setViewColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(Int(blueSlider.value))
        blueColor = CGFloat(blueSlider.value)
        setViewColor()
    }
    
    @IBAction func closeColorPickerTab(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.showSelectedColor(color: UIColor(red: redColor / 255,
                                                   green: greenColor / 255,
                                                   blue: blueColor / 255,
                                                   alpha: 1))
    }
    
    private func setViewColor() {
        colorPickerView.backgroundColor = UIColor(red: redColor / 255,
                                                  green: greenColor / 255,
                                                  blue: blueColor / 255,
                                                  alpha: 1)
    }
}

