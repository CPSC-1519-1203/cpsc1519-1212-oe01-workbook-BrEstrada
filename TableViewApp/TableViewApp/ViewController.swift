//
//  ViewController.swift
//  TableViewApp
//
//  Created by Brandon Estrada on 2022-03-16.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let petArray = ["cat", "dog", "parakeet", "parrot", "canary", "finch", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]
    let cellID = "cellID"
    
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
    

    @IBOutlet weak var petTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        petTable.dataSource = self
        petTable.delegate = self
    }


}

