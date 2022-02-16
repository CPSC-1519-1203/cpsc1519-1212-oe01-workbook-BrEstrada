//
//  ViewController.swift
//  StepperApp
//
//  Created by Brandon Estrada on 2022-02-16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stepperValue: UIStepper!
    
    @IBOutlet weak var labelValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperChanged(_ sender: UIStepper) {
        labelValue.text = "\(stepperValue.value)"
    }
    
    @IBAction func changeStepper(_ sender: UIButton) {
        stepperValue.minimumValue = -10
        stepperValue.maximumValue = -5
        stepperValue.stepValue = 0.5
        stepperValue.isContinuous = true
        stepperValue.autorepeat = true
        stepperValue.wraps = true
    }
}

