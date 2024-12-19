//
//  CanadaViewController.swift
//  Mann_Ambani_MT_8860123
//
//  Created by user230729 on 11/5/23.
// Mann Ambani - 8860123 - Mobile Solutions Development - Fall 2023

import UIKit

//this is the first scene which takes input from user and show images of city that are present in data to user.
//Note: All the images in this file are provided by institution.
//implement text field delegate to resign responder for text field
class Canada: UIViewController,UITextFieldDelegate {
    
    //creating outlets of imageview, lable and text input
    
    @IBOutlet weak var cityImage: UIImageView!
    
    @IBOutlet weak var errorLable: UILabel!
    
    
    @IBOutlet weak var cityInput: UITextField!
    
    //business logic to change image or error message with multiple conditions
    
    @IBAction func findCityButton(_ sender: UIButton) {
        //if text input is nil or empty
        if(cityInput.text!.isEmpty || cityInput.text == nil){
            errorLable.text = "Please Enter city name!"
        }
        //conditions that check for each city and return image
        else if(cityInput.text!.trimmingCharacters(in: .whitespaces).lowercased() == "calgary"){
            errorLable.text = ""
            cityImage.image = UIImage(named: "Calgary")
        }else if(cityInput.text!.trimmingCharacters(in: .whitespaces).lowercased() == "halifax"){
            errorLable.text = ""
            cityImage.image = UIImage(named: "Halifax")
        }else if(cityInput.text!.trimmingCharacters(in: .whitespaces).lowercased() == "montreal"){
            errorLable.text = ""
            cityImage.image = UIImage(named: "Montreal")
        }else if(cityInput.text!.trimmingCharacters(in: .whitespaces).lowercased() == "toronto"){
            errorLable.text = ""
            cityImage.image = UIImage(named: "Toronto")
        }else if(cityInput.text!.trimmingCharacters(in: .whitespaces).lowercased() == "vancouver"){
            errorLable.text = ""
            cityImage.image = UIImage(named: "Vancouver")
        }else if(cityInput.text!.trimmingCharacters(in: .whitespaces).lowercased() == "winnipeg"){
            errorLable.text = ""
            cityImage.image = UIImage(named: "Winnipeg")
        }
        //if city name is not present
        else{
            errorLable.text = "City Not Found!"
        }
    }
    
    
    //tap gesture to dismiss keyboard
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        cityInput.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //this calls when user clicks on return button of keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //it will dismiss key board
        textField.resignFirstResponder()
        return true
    }
    
}
