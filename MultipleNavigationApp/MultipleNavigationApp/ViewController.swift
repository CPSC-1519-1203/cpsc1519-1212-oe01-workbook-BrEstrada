//
//  ViewController.swift
//  MultipleNavigationApp
//
//  Created by Brandon Estrada on 2022-03-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            performSegue(withIdentifier: "firstLink", sender: self)
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let nextVC = segue.destination as! SecondViewController
            nextVC.navigationItem.title = "Second View Controller"
        }


}

