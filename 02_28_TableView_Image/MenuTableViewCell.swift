//
//  MenuTableViewCell.swift
//  02_28_TableView_Image
//
//  Created by csuftitan on 2/28/24.
//

import UIKit

class MenuTableViewCell: UITableViewCell {


    @IBOutlet weak var menuItemImage: UIImageView!
    
    @IBOutlet weak var menuItemTitleLabel: UILabel!
    
    @IBOutlet weak var menuItemDescriptionLabel: UILabel!
    
    @IBOutlet weak var menuItemPriceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
