//
//  HomeViewController.swift
//  firstApplicton
//
//  Created by Mac Mini 7 on 24/9/2024.
//

import UIKit

class HomeViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var item = ["Longsleeve Violeta","Shirt","Pullover" , "Blouse","Shirt", "Pullover" , "Blouse"]
     
    var brandName = ["Dorothy Perkins","Mango", "H&M" , "Olivier","Shirt", "Pullover" , "Blouse"]
     
    var itemPrice = ["51$","34$", "12$" , "51$","51$", "51$" , "51$"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "mCell")
        var ContentTable = cell?.contentView
        
        
        let itemLabel = cell!.contentView.viewWithTag(2)     as! UILabel
        let brandLabel = cell!.contentView.viewWithTag(3)    as! UILabel
        let priceLabel = cell!.contentView.viewWithTag(4)    as! UILabel
        let imageView =  cell!.contentView.viewWithTag(1)    as! UIImageView
        
        itemLabel.text = item[indexPath.row]
        brandLabel.text = brandName[indexPath.row]
        priceLabel.text = itemPrice[indexPath.row]
        imageView.image = UIImage(named: item[indexPath.row])
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let movie = [item[indexPath.row],brandName[indexPath.row],itemPrice[indexPath.row]]
        performSegue(withIdentifier: "mSegue", sender: [String](movie))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let  movie = sender as! [String]
        
        let dest = segue.destination as? DetailsViewController
        dest?.name=movie[0]
        dest?.brand=movie[1]
        dest?.price=movie[2]
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
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
