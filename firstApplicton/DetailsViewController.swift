//
//  DetailsViewController.swift
//  firstApplicton
//
//  Created by Mac Mini 7 on 24/9/2024.
//

import UIKit

class DetailsViewController:UIViewController {
    
    var image:String?
    var name:String?
    var brand:String?
    var price:String?
    
    
    @IBOutlet weak var imageUI: UIImageView!
    
    @IBOutlet weak var nameUI: UILabel!
    
    @IBOutlet weak var priceUI: UILabel!
    
    @IBOutlet weak var brandUI: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameUI.text = name
        brandUI.text = brand
        priceUI.text = price
        imageUI.image = UIImage( named: name!)
        
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
