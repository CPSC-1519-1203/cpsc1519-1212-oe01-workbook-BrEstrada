//
//  ViewController.swift
//  EditRowApp
//
//  Created by Brandon Estrada on 2022-03-17.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var petArray = ["cat", "dog", "parakeet", "parrot", "canary", "finch", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return petArray.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            if (cell == nil) {
                cell = UITableViewCell(
                    style: UITableViewCell.CellStyle.default,
                    reuseIdentifier: cellID)
            }
            cell?.textLabel?.text = petArray[indexPath.row]
            return cell!
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedItem = petArray[indexPath.row]
            let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
                //Just dismiss the action sheet
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    
    func displayAlert(location: Int) {
            let alert = UIAlertController(title: "Add", message: "New Pet", preferredStyle: .alert)
            alert.addTextField(configurationHandler: {(textField) in
                textField.placeholder = "Pet type here"
            })
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
                let savedText = alert.textFields![0] as UITextField
                self.petArray.insert(savedText.text ?? "default", at: location)
                self.tableView.reloadData()
            })
            let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { action -> Void in
                // Do nothing
            })
            alert.addAction(okAction)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
        }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
            let addAction = UITableViewRowAction(style: UITableViewRowAction.Style.normal, title: "Add", handler: {(action: UITableViewRowAction, indexPath: IndexPath) in
                self.displayAlert(location: indexPath.row)
            })
            let deleteAction = UITableViewRowAction(style: UITableViewRowAction.Style.destructive, title: "Delete", handler: {(action: UITableViewRowAction, indexPath: IndexPath) in
                self.petArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            })
            return [deleteAction, addAction]
        }


}

