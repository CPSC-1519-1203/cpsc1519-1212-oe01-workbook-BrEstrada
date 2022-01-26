//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Brandon Estrada on 2022-01-18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelResult:UILabel!
    @IBOutlet weak var textMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let label = UILabel()
//        label.frame = CGRect(x: 125, y: 125, width: 200, height: 80)
//        label.text = "This is a label"
//        view.addSubview(label)
//
//        let button = UIButton()
//        button.frame = CGRect(x: 125, y: 300, width: 80, height: 80)
//        button.setTitle("Button", for: .normal)
//        button.setTitleColor(UIColor.blue, for: .normal)
//        view.addSubview(button)
    }


    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = textMessage.text
    }
}

