//
//  CharacterViewController.swift
//  Quiz02ReviewApp
//
//  Created by Brandon Estrada on 2022-03-04.
//

import UIKit

class CharacterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var characterPickerView: UIPickerView!
    
    
    private let characterNames = ["Karan", "Zane", "Alex", "Lucas", "Sam"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        characterNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        characterNames[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonTapped(_ sender: UIButton) {
        let selectedRow = characterPickerView.selectedRow(inComponent: 0)
        let selectedName = characterNames[selectedRow]
        let title = "You selected \(selectedName)"
        
        let alert = UIAlertController(
            title: title, message: "Thank you for choosing", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "You're welcome", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
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
