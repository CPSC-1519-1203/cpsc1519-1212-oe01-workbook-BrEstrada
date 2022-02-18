//
//  ViewController.swift
//  ImageViewApp
//
//  Created by Brandon Estrada on 2022-02-17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if touch?.view == imageView {
            print("Touched")
        } else {
            print("Nothing ")
        }
    }


}

