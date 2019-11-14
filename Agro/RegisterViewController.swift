//
//  RegisterViewController.swift
//  Agro
//
//  Created by Likhit Garimella on 10/11/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerTapped(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil
            {
                print(error!)
            }
            else
            {
                print("Registration Successful!")
                                
                self.performSegue(withIdentifier: "goToHome", sender: self)
                
            }
        }
        
    }
    
}
