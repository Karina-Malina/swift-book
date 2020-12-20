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
    @IBOutlet var redTextField: UITextField!
    
    @IBOutlet var greenTextLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var greenTextField: UITextField!
    
    @IBOutlet var blueTextLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var blueTextField: UITextField!
    
    @IBOutlet var doneButton: UIButton!
    
    var redColor = CGFloat()
    var greenColor = CGFloat()
    var blueColor = CGFloat()
    
    weak var delegate: ColorPickerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTextField.delegate = self
        greenTextField.delegate = self
        blueTextField.delegate = self
        
        redTextField.returnKeyType = UIReturnKeyType.done
        
        redTextLabel.text = "Red"
        greenTextLabel.text = "Green"
        blueTextLabel.text = "Blue"
        
        redValueLabel.text = String(Int(redColor))
        greenValueLabel.text = String(Int(greenColor))
        blueValueLabel.text = String(Int(blueColor))
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redTextField.text = String(Int(redColor))
        greenTextField.text = String(Int(greenColor))
        blueTextField.text = String(Int(blueColor))
        
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
//        redValueLabel.text = String(Int(redSlider.value))
        redColor = CGFloat(redSlider.value)
        setColor()
    }
   
    @IBAction func greenSliderAction() {
//        greenValueLabel.text = String(Int(greenSlider.value))
        greenColor = CGFloat(greenSlider.value)
        setColor()
    }
    
    @IBAction func blueSliderAction() {
//        blueValueLabel.text = String(Int(blueSlider.value))
        blueColor = CGFloat(blueSlider.value)
        setColor()
    }
    
    @IBAction func closeColorPickerTab(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.showSelectedColor(color: UIColor(red: redColor / 255,
                                                   green: greenColor / 255,
                                                   blue: blueColor / 255,
                                                   alpha: 1))
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        redColor = CGFloat(Int(redTextField.text!)!)
        greenColor = CGFloat(Int(greenTextField.text!)!)
        blueColor = CGFloat(Int(blueTextField.text!)!)
        setColor()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    private func setColor() {
        colorPickerView.backgroundColor = UIColor(red: redColor / 255,
                                                  green: greenColor / 255,
                                                  blue: blueColor / 255,
                                                  alpha: 1)
        redValueLabel.text = String(Int(redColor))
        greenValueLabel.text = String(Int(greenColor))
        blueValueLabel.text = String(Int(blueColor))
        
        redTextField.text = String(Int(redColor))
        greenTextField.text = String(Int(greenColor))
        blueTextField.text = String(Int(blueColor))
        
        redSlider.value = Float(redColor)
        greenSlider.value = Float(greenColor)
        blueSlider.value = Float(blueColor)
    }
}

