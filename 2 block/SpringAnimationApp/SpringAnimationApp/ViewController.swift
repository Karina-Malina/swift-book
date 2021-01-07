//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Karina Blinova on 04.01.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationNameLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationButton: SpringButton!
    private var currentAnimationPresetIndex = -1
    private let animationDataStore = AnimationDataStore()
    
    override func viewDidLoad() {
        let nextAnimationName = "Start \(animationDataStore.animationPresetArray[0])"
        
        super.viewDidLoad()
        animationButton.layer.cornerRadius = 10
        animationView.layer.cornerRadius = 10
        animationButton.setTitle(nextAnimationName, for: .normal)
    }
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        let animationPreset = animationDataStore.animationPresetArray
        currentAnimationPresetIndex = (currentAnimationPresetIndex == (animationPreset.count - 1)) ? 0 : currentAnimationPresetIndex + 1
        let nextAnimationPresetIndex = (currentAnimationPresetIndex == (animationPreset.count - 1)) ? 0 : currentAnimationPresetIndex + 1
        
        animationNameLabel.text = animationPreset[currentAnimationPresetIndex]
        let nextAnimationName = "Start \(animationDataStore.animationPresetArray[nextAnimationPresetIndex])"
        
        animationButton.setTitle(nextAnimationName, for: .normal)
        animationView.animation = animationPreset[currentAnimationPresetIndex]
        animationView.animate()
    }
}
