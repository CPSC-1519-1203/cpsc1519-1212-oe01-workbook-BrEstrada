//
//  ViewController.swift
//  SimpleCollectionViewApp
//
//  Created by Brandon Estrada on 2022-03-30.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var cellColor = true

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath)
            // Alternate colors in the Collection View cells
            if cellColor {
                cell.backgroundColor = UIColor.yellow
            } else {
                cell.backgroundColor = UIColor.green
            }
            cellColor = !cellColor
            return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 100
        }


}

