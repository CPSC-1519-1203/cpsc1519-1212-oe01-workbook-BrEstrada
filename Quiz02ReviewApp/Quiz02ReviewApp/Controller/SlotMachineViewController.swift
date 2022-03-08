//
//  SlotMachineViewController.swift
//  Quiz02ReviewApp
//
//  Created by Brandon Estrada on 2022-03-04.
//

import UIKit

class SlotMachineViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let images = [
        UIImage(named: "seven")!,
        UIImage(named: "bar")!,
        UIImage(named: "crown")!,
        UIImage(named: "lemon")!,
        UIImage(named: "cherry")!,
        UIImage(named: "apple")!
    ]
    
    // MARK: Picker Data source methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        5
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        images.count
    }
    
    // MARK: Picker view delegate methods
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let currentImage = images[row]
        let currentImageView = UIImageView(image: currentImage)
        return currentImageView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        64
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func spin(_ sender: UIButton) {
        var win = false
        var numInRow = -1
        var lastVal = -1
        
        for index in 0..<5 {
            let newValue = Int.random(in: 0..<images.count)
            if newValue == lastVal {
                numInRow += 1
            } else {
                lastVal = newValue
                
                picker.selectRow(newValue, inComponent: index, animated: true)
                picker.reloadComponent(index)
                
                if (numInRow >= 3) {
                    win = true
                }
            }
            winLabel.text = win ? "WINNER!" : " "
        }
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
