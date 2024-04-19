//
//  ViewController.swift
//  PlayingWithColor
//
//  Created by Денис Александров on 18.04.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupSliders()
        updateColor()
        
    }
    
    @IBAction func sliderValueRed(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func sliderValueGreen(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func sliderValueBlue(_ sender: UISlider) {
        updateColor()
    }
    
    private func setupView() {
        colorView.layer.cornerRadius = 20
    }
    
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func updateColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

        
        

    


