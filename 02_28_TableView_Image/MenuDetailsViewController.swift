//
//  MenuDetailsViewController.swift
//  02_28_TableView_Image
//
//  Created by csuftitan on 2/29/24.
//

import UIKit

class MenuDetailsViewController: UIViewController {

    var imageContainer : UIImage?
    var titleContainer : String?
    var descriptionContainer : String?
    var priceContainer : String?
    
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuTitleLabel: UILabel!
    @IBOutlet weak var menuDescriptionLabel: UILabel!
    
    @IBOutlet weak var menuPriceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
        
        // Do any additional setup after loading the view.
    }
    
    func bindData(){
        self.menuImageView.image = imageContainer
        self.menuTitleLabel.text = titleContainer
        self.menuDescriptionLabel.text = descriptionContainer
        self.menuPriceLabel.text = priceContainer
        
    }
   

}
