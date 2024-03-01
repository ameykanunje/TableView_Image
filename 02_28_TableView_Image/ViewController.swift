//
//  ViewController.swift
//  02_28_TableView_Image
//
//  Created by csuftitan on 2/28/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuTableView: UITableView!
    var menuDetailsViewController : MenuDetailsViewController?
    private var menuTableCellViewIdentifier = "MenuTableViewCell"
    private var menuDetailsViewIdentifier = "MenuDetailsViewController"
    var uiNib : UINib?
    var menuTableViewCell : MenuTableViewCell?
    //using Menu object
    var menuItems : [Menu] = [
        Menu(foodImage: UIImage(named: "csuf")!, foodTitle: "California", foodDescription: "Delicious", foodPrice: 20.0),
        Menu(foodImage: UIImage(named: "softmicro")!, foodTitle: "SoftMicro", foodDescription: "Quality", foodPrice: 15.0)]
    override func viewDidLoad() {
        super.viewDidLoad()
        initilizationOfTableView()
        registerXIBWithTableView()
    }
    
    func initilizationOfTableView(){
        menuTableView.delegate = self
        menuTableView.dataSource = self
    }
    
    func registerXIBWithTableView(){
        uiNib = UINib(nibName: menuTableCellViewIdentifier, bundle: nil)
        self.menuTableView.register(uiNib, forCellReuseIdentifier: menuTableCellViewIdentifier)
    }

}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //call tableview cell and then bind data to each cell
        menuTableViewCell = self.menuTableView.dequeueReusableCell(withIdentifier: menuTableCellViewIdentifier, for: indexPath) as! MenuTableViewCell
        menuTableViewCell?.menuItemImage.image = menuItems[indexPath.row].foodImage
        menuTableViewCell?.menuItemTitleLabel.text = menuItems[indexPath.row].foodTitle
        menuTableViewCell?.menuItemDescriptionLabel.text = menuItems[indexPath.row].foodDescription
        menuTableViewCell?.menuItemPriceLabel.text = String(menuItems[indexPath.row].foodPrice)
        
        return menuTableViewCell!
    }
    
    
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //cell height
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        //here i can access the row and get its details
        menuDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: menuDetailsViewIdentifier) as! MenuDetailsViewController
        //now we can access all properties
        menuDetailsViewController?.imageContainer = menuItems[indexPath.row].foodImage
        menuDetailsViewController?.titleContainer = menuItems[indexPath.row].foodTitle
        menuDetailsViewController?.descriptionContainer = menuItems[indexPath.row].foodDescription
        menuDetailsViewController?.priceContainer = String(menuItems[indexPath.row].foodPrice)
        
        self.navigationController?.pushViewController(menuDetailsViewController!, animated: true)
        
        //after this all containers will have the data and we can access it in MenuDetailsViewController
    }
}







 //var parameter = Model(data: [Data(username: <#T##String#>, email: <#T##String#>, password: <#T##String#>)])





















