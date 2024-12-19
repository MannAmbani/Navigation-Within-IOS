//
//  Lab3ViewController.swift
//  Mann_Ambani_MT_8860123
//
//  Created by user230729 on 11/6/23.
//

import UIKit

class Lab3: UIViewController {
    //This is my lab 3
    
    //Taking outlets of each text input, text view and message lable
    @IBOutlet weak var firstName: UITextField!
    
    
    @IBOutlet weak var lastName: UITextField!
    
    
    @IBOutlet weak var country: UITextField!
    
    
    @IBOutlet weak var age: UITextField!
    
    
    @IBOutlet weak var informationBox: UITextView!
    
    
    @IBOutlet weak var feedbackLable: UILabel!
    
    
    //add button logic
    @IBAction func addButton(_ sender: UIButton) {
        //it will check if any of the field is empty or nil
        if((firstName.text!.isEmpty || firstName.text == nil)
           || (lastName.text!.isEmpty || lastName.text == nil ) || (country.text!.isEmpty || country.text == nil) || (age.text!.isEmpty || age.text == nil) ){
            informationBox.text = ""
            feedbackLable.text = "Complete the missing info before adding!"
            feedbackLable.textColor = UIColor.red
        }
        //if all inputs are valid it will write the values in text view
        else{
            feedbackLable.text = ""
            informationBox.text = "Full Name: \(firstName.text ?? "") \(lastName.text ?? "")\n Country: \(country.text ?? "")\n Age: \(age.text ?? "")"
        }
        
        
    }
    
    
    //submit button logic
    @IBAction func submitButton(_ sender: UIButton) {
        //check of any of field is empty or not
        if((firstName.text!.isEmpty || firstName.text == nil)
           || (lastName.text!.isEmpty || lastName.text == nil ) || (country.text!.isEmpty || country.text == nil) || (age.text!.isEmpty || age.text == nil) ){
            
            feedbackLable.text = "Complete the missing info!"
            feedbackLable.textColor = UIColor.red
        }
        //if all inputs are valid
        else{
            //check if data is added or not
            if(informationBox.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || informationBox.text == nil){
                feedbackLable.text = "Please add the content before submitting"
            }
            //submit form if every thing is okay
            else{
                feedbackLable.textColor = UIColor.black
                feedbackLable.text = "Successfully submitted!"
            }
        }
    }
    
    //clear button will clear every thing
    @IBAction func clearButton(_ sender: UIButton) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        
        informationBox.text = ""
        feedbackLable.text = ""
        
    }
    
    //tap gesture to dismiss keyboard
    @IBAction func closeKeyboardGesture(_ sender: UITapGestureRecognizer) {
        firstName.resignFirstResponder()
        lastName.resignFirstResponder()
        country.resignFirstResponder()
        age.resignFirstResponder()
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
