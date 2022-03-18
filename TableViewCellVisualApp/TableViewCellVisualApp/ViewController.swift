//
//  ViewController.swift
//  TableViewCellVisualApp
//
//  Created by Brandon Estrada on 2022-03-17.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let mainArray = ["A-Wing", "Tie Advnaced", "Tie Bomber", "X-Wing"]
    let detailArray = ["Allicance A-Wing", "Empire Tie Advanced", "Empire Tie Bomber", "Allicance X-Wing"]
    let imageArray = ["A-Wing.png", "Tie Advanced.png", "Tie Bomber.png", "X-Wing - 01.png"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return mainArray.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
            cell.mainText?.text = self.mainArray[indexPath.row]
            cell.detailText?.text = self.detailArray[indexPath.row]
            cell.imageView?.image = UIImage(named: self.imageArray[indexPath.row])
            return cell
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
//    User selected function 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedItem = mainArray[indexPath.row]
            let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
                //Just dismiss the action sheet
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }


}

