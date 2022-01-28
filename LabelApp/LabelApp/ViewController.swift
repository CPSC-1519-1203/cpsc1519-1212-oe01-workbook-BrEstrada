//
//  ViewController.swift
//  LabelApp
//
//  Created by Brandon Estrada on 2022-01-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeLabel(_ sender: UIButton) {
        myLabel.text = "Text created by Swift \ncode using Xcode"
        myLabel.numberOfLines = 2
        myLabel.font = UIFont(name: "Courier", size: 14)
        myLabel.backgroundColor = UIColor.yellow
        myLabel.isEnabled = false
    }
}

