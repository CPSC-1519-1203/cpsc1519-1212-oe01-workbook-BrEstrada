//
//  SecondViewController.swift
//  NavigationButtonApp
//
//  Created by Brandon Estrada on 2022-03-18.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func doneTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Message", message: "Done button tapped", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
                    //Just dismiss the action sheet
                })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
}
