//
//  ViewController.swift
//  TableViewVisualApp
//
//  Created by Brandon Estrada on 2022-03-16.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let petArray = ["cat", "dog", "parakeet", "parrot", "canary", "finch", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return petArray.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
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


}

