//
//  StartViewController.swift
//  ColorPicker
//
//  Created by Karina Blinova on 19.12.2020.
//

import UIKit

class StartViewController: UIViewController, ColorPickerViewControllerDelegate {
    
    func showSelectedColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorPickerVC = segue.destination as! ColorPickerViewController
        colorPickerVC.delegate = self
        colorPickerVC.redColor = (view.backgroundColor?.rgba.red)! * 255
        colorPickerVC.greenColor = (view.backgroundColor?.rgba.green)! * 255
        colorPickerVC.blueColor = (view.backgroundColor?.rgba.blue)! * 255
    }
}


extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}
