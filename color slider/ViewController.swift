//
//  ViewController.swift
//  color slider
//
//  Created by Janith Vidanagamage on 2023-02-03.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var colorMixerView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    var red: Float = 0.0
    var green: Float = 0.0
    var blue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        red = redSlider.value
        green = greenSlider.value
        blue = blueSlider.value
        
        updateColor()
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didGreenSliderChange(_ sender: UISlider) {
        green = sender.value
        //print("red" \(red)*)
        updateColor()
    }
    
    @IBAction func didBlueSliderChange(_ sender: UISlider) {
        blue = sender.value
        updateColor()
    }
    

    @IBAction func didRedSliderChange(_ sender: UISlider) {
        red = sender.value
        updateColor()
    }
    
    func updateColor() {
        let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue:CGFloat(blue/255), alpha: 1)
        
        colorMixerView.backgroundColor = color
    }
}

