//
//  ViewController.swift
//  PickerApp
//
//  Created by Brandon Estrada on 2022-02-18.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:
                    Int) -> String? {
        return pickerData[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPicker.delegate = self
        myPicker.dataSource = self
        pickerData = ["cat","dog","hamster","lizard","parrot","goldfish"]
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let pickerIndex = myPicker.selectedRow(inComponent: 0)
        let alert = UIAlertController(title: "Your Choice", message: "\(pickerData[pickerIndex])", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            // Just dismiss the action sheet
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

