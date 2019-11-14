//
//  LoginViewController.swift
//  Agro
//
//  Created by Likhit Garimella on 10/11/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error != nil
                {
                    print(error!)
                }
                else
                {
                    print("LogIn Successful")
                                        
                    self.performSegue(withIdentifier: "goToHome", sender: self)
            }
            
        }
        
    }
    
}
