//
//  LoginViewController.swift
//  firstApplicton
//
//  Created by Mac Mini 7 on 17/9/2024.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var InputEmail:UITextField!
    
    
    @IBOutlet weak var PasswordInput: UITextField!
    
    
    @IBAction func LoginBtn(_ sender: Any){
        if(InputEmail.hasText && PasswordInput.hasText)
        {
            print(InputEmail.text!)
            print(PasswordInput.text ?? "gfhkug")
            performSegue(withIdentifier: "hSEGUE", sender: self)
        }else
        {
        
            
            prompAlert1(msg: "Inputs is Empty", title: "verify ! ")
        }
       
    }
    
    func prompAlert1(msg : String , title : String)
    {
        
        let alert = UIAlertController(title: title, message: msg , preferredStyle: .alert )
        
        
        
        let action = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(action)
        
        
        self.present(alert,animated: true)
    }
    
    
}
