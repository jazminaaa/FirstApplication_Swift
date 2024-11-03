//
//  FavoritListViewController.swift
//  firstApplicton
//
//  Created by yassmine zammali on 8/10/2024.
//

import UIKit
import CoreData

class FavoritListViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{
    var favoritelist :[String]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let persistentContainer = appDelegate.persistentContainer
        let managedContext = persistentContainer.viewContext
        let request = NSFetchRequest<NSManagedObject>(entityName: "Favorite")
        do {
            let resultReq = try managedContext.fetch(request)
            for item in resultReq{
                favoritelist.append(item.value(forKey: "productname")as! String)
                
            }
        }catch{
            print("fetch error")
        }
    }

}
