//
//  SecondViewController.swift
//  SimpleNavigationApp
//
//  Created by Brandon Estrada on 2022-03-18.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    var receivedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelDisplay.text = receivedString

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
