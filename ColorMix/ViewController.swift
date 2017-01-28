//
//  ViewController.swift
//  ColorMix
//
//  Created by Apple on 1/28/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBAction func toggleRed(_ sender: UISwitch) {
       mixColor()
    }
    
    @IBAction func toggleGreen(_ sender: UISwitch) {
       mixColor()
    }
    @IBAction func toggleBlue(_ sender: UISwitch) {
       mixColor()
    }
    
    @IBAction func slideRed(_ sender: UISlider) {
        mixColor()
    }
    @IBAction func slideBlue(_ sender: Any) {
        mixColor()
    }
    @IBAction func slideGreen(_ sender: Any) {
        mixColor()
    }
    
    
    func mixColor(){
        var red: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var green: CGFloat = 0.0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        colorView.backgroundColor = color;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

