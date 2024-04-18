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
    
    func setupView() {
        colorView.layer.cornerRadius = 20
    }
    
    
    func setupSliders() {
            redSlider.minimumTrackTintColor = .red
            greenSlider.minimumTrackTintColor = .green
//            blueSlider.minimumTrackTintColor = .blue
        }
    
    @IBAction func sliderValue(_ sender: UISlider) {
        updateColor()
    }
    
    func updateColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        
        )
    }
    
}

