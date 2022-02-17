//
//  ViewController.swift
//  ProgressApp
//
//  Created by Brandon Estrada on 2022-02-17.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0

    @IBOutlet weak var activityView: UIActivityIndicatorView!
    
    @IBOutlet weak var labelProgress: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var stepperObject: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityView.hidesWhenStopped = true
        
        progressView.progress = 0
        stepperObject.stepValue = 0.1
        stepperObject.maximumValue = 1.0
    }

    @IBAction func runButton(_ sender: UIButton) {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.activityView.startAnimating()
            self.counter += 1
            if self.counter >= 5 {
                self.activityView.stopAnimating()
                timer.invalidate()
                self.counter = 0
            }
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        labelProgress.text = "Completed \(Int(stepperObject.value * 10)) of 10 tasks"
        progressView.progress = Float(stepperObject.value)
    }
    
    
}

