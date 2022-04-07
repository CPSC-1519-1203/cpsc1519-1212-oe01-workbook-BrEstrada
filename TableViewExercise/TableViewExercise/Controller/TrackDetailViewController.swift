//
//  TrackDetailViewController.swift
//  TableViewExercise
//
//  Created by Brandon Estrada on 2022-04-01.
//

import UIKit

class TrackDetailViewController: UIViewController {
    
    var selectedTrack: Track?

    @IBOutlet weak var TrackNameLabel: UILabel!
    @IBOutlet weak var TrackPriceLabel: UILabel!
    @IBOutlet weak var TrackReleaseDateLabel: UILabel!
    
    let currencyFormatter = NumberFormatter()
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyFormatter.numberStyle = .currency
        currencyFormatter.currencyCode = "CAD"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale.current

        // Do any additional setup after loading the view.
        if let currentTrack = selectedTrack {
            TrackNameLabel.text = currentTrack.name
            TrackPriceLabel.text = currencyFormatter.string(from: currentTrack.price as NSNumber)!
            TrackReleaseDateLabel.text = dateFormatter.string(from: currentTrack.releaseDate)
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
