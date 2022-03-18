//
//  ViewController.swift
//  TableCellApp
//
//  Created by Brandon Estrada on 2022-03-17.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableData: UITableView!
    
    let mainArray = ["A-Wing", "Tie Advnaced", "Tie Bomber", "X-Wing"]
    let detailArray = ["Allicance A-Wing", "Empire Tie Advanced", "Empire Tie Bomber", "Allicance X-Wing"]
    let imageArray = ["A-Wing.png", "Tie Advanced.png", "Tie Bomber.png", "X-Wing - 01.png"]
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableData.delegate = self
        tableData.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return mainArray.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            if (cell == nil) {
                cell = UITableViewCell(
                    style: UITableViewCell.CellStyle.subtitle,
                    reuseIdentifier: cellID)
            }
            cell?.textLabel?.text = mainArray[indexPath.row]
            cell?.detailTextLabel?.text = detailArray[indexPath.row]
            cell?.imageView?.image = UIImage(named: imageArray[indexPath.row])
            return cell!
        }
    
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

