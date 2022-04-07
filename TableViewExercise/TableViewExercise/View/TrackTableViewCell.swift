//
//  TrackTableViewCell.swift
//  TableViewExercise
//
//  Created by Brandon Estrada on 2022-04-01.
//

import UIKit

class TrackTableViewCell: UITableViewCell {
    
    @IBOutlet weak var TrackNameLabel: UILabel!
    @IBOutlet weak var TrackPriceLabel: UILabel!
    @IBOutlet weak var TrackReleaseDateLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
