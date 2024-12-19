//
//  QuadraticViewController.swift
//  Mann_Ambani_MT_8860123
//
//  Created by user230729 on 11/5/23.
//

import UIKit
//This view contains logic for quadratic equation
class Quadratic: UIViewController {
    
    
    
    //taking outlets of A, B, C, message lable, xone and xTwo lables
    @IBOutlet weak var a: UITextField!
    
    
    @IBOutlet weak var b: UITextField!
    
    
    @IBOutlet weak var c: UITextField!
    
    
    @IBOutlet weak var message: UILabel!
    
    //xOne holds the value of x when there is one or two values of x
    //if there are two values of x it will hold the first value
    @IBOutlet weak var xOne: UILabel!
    
    //xTwo holds the second value of x when there are two values of x
    @IBOutlet weak var xTwo: UILabel!
    
    
    //calculate button business logic
    @IBAction func calculateButton(_ sender: UIButton) {
        if(a.text!.isEmpty && b.text!.isEmpty && c.text!.isEmpty)
        {
            message.text = "Please Add Value Of A, B, and C to get X"
            xOne.text = ""
            xTwo.text = ""
        }
        //this condition will check four things if a is empty, nil, is double, or is zero
        //we dont allow zero as a input for a because the output will be infinite or nan if a is zero
        //also quadratic Equation it self says that a should not be zero
       else if(a.text!.isEmpty || a.text == nil || Double(a.text!) == nil || a.text == "0"){
            message.text = "The value you entered for A is invalid."
            xOne.text = ""
            xTwo.text = ""
        }
        //this conditions will check the validation for b
        else if(b.text!.isEmpty || b.text == nil || Double(b.text!) == nil){
            message.text = "The value you entered for B is invalid."
            xOne.text = ""
            xTwo.text = ""
        }
        //this condition will validate c
        else if(c.text!.isEmpty || c.text == nil || Double(c.text!) == nil){
            message.text = "The value you entered for C is invalid."
            xOne.text = ""
            xTwo.text = ""
        }
        //if A, B, and C are valid input then we will calculate the value of x
        else{
            //in order to calculate the value of x we first get discriminant and from that we will know what will be the outcome of x
            var discriminant:Double
            //here we take some temporary value for A,B and C
            let aVal = Double(a.text!)
            let bVal = Double(b.text!)
            let cVal = Double(c.text!)
            
            //formula for discriminant
            discriminant = (bVal! * bVal!) - (4 * aVal! * cVal!)
            
            //condition if discriminant is greater than zero then x will have two values
            if(discriminant > 0){
                //displaying message
                message.text = "There are two values for X"
                //calculating and storing both values of x in temporary variable name x1 and x2
                let x1:Double = (-bVal! + sqrt(discriminant)) / (2 * aVal!)
                let x2:Double = (-bVal! - sqrt(discriminant)) / (2 * aVal!)
                
                //displaying both value of x
                xOne.text = "X = \(String(format: "%.4f", x1))"
                xTwo.text = "X = \(String(format: "%.4f", x2))"
                
            }
            //condition if discriminant is less than zero then x will have no values
            else if(discriminant < 0){
                //message that says there are no values for x
                message.text = "There are no results since the discriminant is less than zero."
                xOne.text = ""
                xTwo.text = ""
            }
            //condition if discriminant equals zero then x will only have one value
            else{
                //message containing information about x
                message.text = "There is only one value for X"
                
                //calculating x ( this can also write with short formula like -b/2a as discriminant is zero but here we will use full formula.
                let x2:Double = (-bVal! - sqrt(discriminant)) / (2 * aVal!)
                
                //assigning the value of x
                xOne.text = "X = \(String(format: "%.4f", x2))"
                xTwo.text = ""
            }
            
            
        }
        
    }
    
    
    //business logic for clear button
    @IBAction func clear(_ sender: UIButton) {
        //clear button will clear every thing and display a message to user to enter values of A, B, and C.
        a.text = ""
        b.text = ""
        c.text = ""
        message.text = "Please Add Value Of A, B, and C to get X"
        xOne.text = ""
        xTwo.text = ""
        
    }
    
    //tap gesture to dismiss keyboard
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        a.resignFirstResponder()
        b.resignFirstResponder()
        c.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
