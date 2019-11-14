//
//  CropsViewController.swift
//  Agro
//
//  Created by Likhit Garimella on 13/11/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import Firebase

class CropsViewController: UIViewController {
    
    // Our strings
    let story1 = "\n\n\n\nDisplay list of all crops."
    let answer1a = "Select soil type."
    let answer1b = "Select weather condtion."
    
    let story2 = "\n\n\n\nDisplay list of all soils."
    let answer2a = "Soil type1"
    let answer2b = "Soil type2"
    
    let story3 = "\n\n\n\nDisplay all sorts of weather conditions."
    let answer3a = "Weather condition type1"
    let answer3b = "Weather condition type2"
    
    /*--------------------------------------------------*/
    /*--------------------------------------------------*/
    
    let story4 = "\n\n\n\nFavourable crops for soil type1"
    let answer4a = "Demand"
    let answer4b = "Supply"
    
    let story5 = "\n\n\n\nFavourable crops for soil type2"
    let answer5a = "Demand"
    let answer5b = "Supply"
    
    let story6 = "\n\n\n\nFavourable crops for weather condition type1"
    let answer6a = "Demand"
    let answer6b = "Supply"
    
    let story7 = "\n\n\n\nFavourable crops for weather condition type2"
    let answer7a = "Demand"
    let answer7b = "Supply"
    
    let story8 = "\n\n\n\nStory-8"
    
    let story9 = "\n\n\n\nStory-9"
    
    let story10 = "\n\n\n\nStory-10"
    
    let story11 = "\n\n\n\nStory-11"
    
    let story12 = "\n\n\n\nStory-12"
    
    let story13 = "\n\n\n\nStory-13"
    
    let story14 = "\n\n\n\nStory-14"
    
    let story15 = "\n\n\n\nStory-15"
    
    
    // UI Elements linked to the storyboard
    
    @IBOutlet weak var topButton: UIButton!     // Has TAG = 1
    
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    
    @IBOutlet weak var storyTextView: UITextView!
    
    @IBOutlet weak var ResetButton: UIButton!
    
    var storyIndex = 1      //Initialise instance variables here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        
        ResetButton.isHidden = true

    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let dataDB = Database.database().reference().child("Farmers")
        
            if sender.tag == 1 && storyIndex == 1 {
                
                storyTextView.text = story2
                topButton.setTitle(answer2a, for: .normal)
                bottomButton.setTitle(answer2b, for: .normal)
                storyIndex = 2
                
            }
            
            else if sender.tag == 2 && storyIndex == 1 {
                
                storyTextView.text = story3
                topButton.setTitle(answer3a, for: .normal)
                bottomButton.setTitle(answer3b, for: .normal)
                storyIndex = 3
                
            }
                
            /*--------------------------------------------------*/
            /*--------------------------------------------------*/
                        
            else if sender.tag == 1 && storyIndex == 2 {
                
                storyTextView.text = story4
                topButton.setTitle(answer4a, for: .normal)
                bottomButton.setTitle(answer4b, for: .normal)
                storyIndex = 4
        
            }
        
            else if sender.tag == 2 && storyIndex == 2 {
                
                storyTextView.text = story5
                topButton.setTitle(answer5a, for: .normal)
                bottomButton.setTitle(answer5b, for: .normal)
                storyIndex = 5
                
            }

            else if sender.tag == 1 && storyIndex == 3 {
                
                storyTextView.text = story6
                topButton.setTitle(answer6a, for: .normal)
                bottomButton.setTitle(answer6b, for: .normal)
                storyIndex = 6
                
            }
            
            else if sender.tag == 2 && storyIndex == 3 {
                
                storyTextView.text = story7
                topButton.setTitle(answer7a, for: .normal)
                bottomButton.setTitle(answer7b, for: .normal)
                storyIndex = 7
                
            }
                
            /*--------------------------------------------------*/
            /*--------------------------------------------------*/
        
            else if sender.tag == 1 && storyIndex == 4  {
                
                storyTextView.text = story8
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 8
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story4, "(8) Crops Demand": story8]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
        
            else if sender.tag == 2 && storyIndex == 4  {
                
                storyTextView.text = story9
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 9
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story4, "(9) Crops Supply": story9]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
        
            else if sender.tag == 1 && storyIndex == 5  {
                
                storyTextView.text = story10
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 10
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story5, "(8) Crops Demand": story10]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
        
            else if sender.tag == 2 && storyIndex == 5  {
                
                storyTextView.text = story11
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 11
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story5, "(9) Crops Supply": story11]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
            
            else if sender.tag == 1 && storyIndex == 6  {
                
                storyTextView.text = story12
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 12
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story6, "(8) Crops Demand": story12]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
        
            else if sender.tag == 2 && storyIndex == 6  {
                
                storyTextView.text = story13
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 13
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story6, "(9) Crops Supply": story13]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
        
            else if sender.tag == 1 && storyIndex == 7  {
                
                storyTextView.text = story14
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 14
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story7, "(8) Crops Demand": story14]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
        
            else if sender.tag == 2 && storyIndex == 7  {
                
                storyTextView.text = story15
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 15
                
                let dataDictionary = ["(1) User": Auth.auth().currentUser?.email, "(7) Favourable Crops": story7, "(9) Crops Supply": story15]
                
                dataDB.child("Crops").childByAutoId().setValue(dataDictionary)  //Closure
                {
                    (error, reference) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("Data Saved Successfully!")

                    }
                }
                
            }
        
            /*--------------------------------------------------*/
            /*--------------------------------------------------*/
            
            if storyIndex == 8 || storyIndex == 9 || storyIndex == 10 || storyIndex == 11 || storyIndex == 12 || storyIndex == 13 || storyIndex == 14 || storyIndex == 15 {
                
                ResetButton.isHidden = false
                
            }
        
    }
    
    @IBAction func ResetPressed(_ sender: UIButton) {
        
        storyIndex = 1
        
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        
        topButton.isHidden = false
        bottomButton.isHidden = false
        
    }
    
}
