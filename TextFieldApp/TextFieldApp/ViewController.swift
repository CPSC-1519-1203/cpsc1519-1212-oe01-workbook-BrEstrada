//
//  ViewController.swift
//  TextFieldApp
//
//  Created by Brandon Estrada on 2022-01-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        myTextField.placeholder = "Email address here"
        myTextField.textColor = UIColor.red
        myTextField.font = UIFont(name: "Courier", size: 16)
        myTextField.clearButtonMode = .whileEditing
        
        
    }
    
    @objc func dismissKeyboard() {
            view.endEditing(true)
        }
    
    @objc func keyboardWillShow(notification: NSNotification) {
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if self.view.frame.origin.y == 0 {
                    self.view.frame.origin.y -= keyboardSize.height
                }
            }
        }
    
    @objc func keyboardWillHide(notification: NSNotification) {
            if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
                if self.view.frame.origin.y != 0 {
                    self.view.frame.origin.y = 0
                }
            }
        }

    @IBAction func displayPassword(_ sender: UIButton) {
        myTextField.text = passwordTextField.text?.uppercased()
    }
    
}

