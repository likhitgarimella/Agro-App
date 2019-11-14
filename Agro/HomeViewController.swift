//
//  HomeViewController.swift
//  Agro
//
//  Created by Likhit Garimella on 10/11/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
        
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var aadharTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var labelMessage: UILabel!
    
    var ref:DatabaseReference!
    
    @IBAction func logoutTapped(_ sender: UIBarButtonItem) {
        
        do  {
            try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
            
        }   catch   {
            print("Error logging out!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ref = Database.database().reference()
    }
    
    @IBAction func addFarmerButtonTapped(_ sender: UIButton) {
        
        nameTextField.endEditing(true)
        ageTextField.endEditing(true)
        genderTextField.endEditing(true)
        aadharTextField.endEditing(true)
        cityTextField.endEditing(true)

        nameTextField.isEnabled = false
        ageTextField.isEnabled = false
        genderTextField.isEnabled = false
        aadharTextField.isEnabled = false
        cityTextField.isEnabled = false
        
        //TODO: Send the message to Firebase and save it in our database

        let dataDB = Database.database().reference().child("Farmers")
        
        let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(2) Name": nameTextField.text!, "(3) Age": ageTextField.text!, "(4) Gender": genderTextField.text!, "(5) Aadhar": aadharTextField.text!, "(6) City": cityTextField.text!]
        
        dataDB.child("Details").childByAutoId().setValue(dataDictionary)  //Closure
        {
            (error, reference) in
            if error != nil
            {
                print(error!)
            }
            else
            {
                print("Data Saved Successfully!")
                
                //And now we have to enable back, for a new msg
                self.nameTextField.isEnabled = true
                self.ageTextField.isEnabled = true
                self.genderTextField.isEnabled = true
                self.aadharTextField.isEnabled = true
                self.cityTextField.isEnabled = true
                
                self.nameTextField.text = ""
                self.ageTextField.text = ""
                self.genderTextField.text = ""
                self.aadharTextField.text = ""
                self.cityTextField.text = ""

            }
        }
        
//        self.ref.child("Farmers").child("Farmer1").setValue(["Name": nameTextField.text, "Age": ageTextField.text, "Gender": genderTextField.text, "Aadhar": aadharTextField.text, "City": cityTextField.text])
      

        
//    ref?.child("Farmers").childByAutoId().setValue(nameTextField.text)
//
//    ref?.child("Farmers").childByAutoId().setValue(ageTextField.text)
//
//    ref?.child("Farmers").childByAutoId().setValue(genderTextField.text)
//
//    ref?.child("Farmers").childByAutoId().setValue(aadharTextField.text)
//
//    ref?.child("Farmers").childByAutoId().setValue(cityTextField.text)
    
    
        
    labelMessage.text = "Farmer Added"
        
    }
    
    @IBAction func selectCropsTapped(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToCrops", sender: self)
        
    }
    
}
