//
//  TableViewCell.swift
//  TableViewCellVisualApp
//
//  Created by Brandon Estrada on 2022-03-17.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var detailText: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
