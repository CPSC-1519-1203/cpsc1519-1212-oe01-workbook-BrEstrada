//
//  ViewController.swift
//  SliderApp
//
//  Created by Brandon Estrada on 2022-02-16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeSlider(_ sender: UIButton) {
        sliderValue.minimumValue = 1
        sliderValue.maximumValue = 25
        sliderValue.value = 7
        sliderValue.minimumTrackTintColor = UIColor.red
        sliderValue.maximumTrackTintColor = UIColor.green
        sliderValue.thumbTintColor = UIColor.black
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        labelValue.text = "\(sliderValue.value)"
    }
    
}

