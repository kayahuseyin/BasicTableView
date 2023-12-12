//
//  DemoTableViewCell.swift
//  BasicTableView
//
//  Created by Hüseyin Kaya on 12.12.2023.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet var foodPriceLabel: UILabel!
    @IBOutlet var foodNameLabel: UILabel!
    @IBOutlet var foodImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
