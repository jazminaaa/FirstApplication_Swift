//
//  DetailsViewController.swift
//  firstApplicton
//
//  Created by Mac Mini 7 on 24/9/2024.
//

import UIKit
import CoreData


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
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let persistentContainer = appDelegate.persistentContainer
        
        let managedContext = persistentContainer.viewContext
        
        let entityDescription = NSEntityDescription.entity(forEntityName: "Favorite", in: managedContext)
        
        let object = NSManagedObject(entity:entityDescription! ,insertInto: managedContext)
        
        object.setValue(name!, forKey: "productname")
        do {
            
            try managedContext.save()
            print ("insert good")}
        catch{
            print ("insert failed")
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
