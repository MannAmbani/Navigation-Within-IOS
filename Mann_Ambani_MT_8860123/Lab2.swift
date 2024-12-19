//
//  Lab2ViewController.swift
//  Mann_Ambani_MT_8860123
//
//  Created by user230729 on 11/6/23.
//

import UIKit

//this is my lab 2

class Lab2: UIViewController {
    //here we are takig two variables one is count to increase the count and second is step value which will use to increase the value of counter by step value.
    var count = 0
    var stepValue = 1
    
    //counetr lable
    @IBOutlet weak var counter: UILabel!
    
    //business logic for increment button
    @IBAction func increment(_ sender: UIButton) {
        //count will increase by step value
        //this can also be written as count += stepValue
        count = count + stepValue
        counter.text = String(count)
        
    }
    
    //business logic for decrement
    @IBAction func decrement(_ sender: UIButton) {
        //count will decrease by step value
        //this can also be written as count -= stepValue
        count = count - stepValue
        counter.text = String(count)
    }
    
    //reset button logic
    @IBAction func reset(_ sender: UIButton) {
        //this button will reset every thing to default
        count = 0
        counter.text = String(count)
        stepValue = 1
        step2Outlet.setTitle("Step = 2", for: .normal)
        
    }
    //button outlet to change the value of button from another place
    @IBOutlet weak var step2Outlet: UIButton!
    
    //step2 button business logic
    @IBAction func step2(_ sender: UIButton) {
        //if step value is 2 then it will change to 1 and count will increase or decrease by 1
        if(stepValue == 2){
            stepValue = 1
            step2Outlet.setTitle("Step = 2", for: .normal)
        
        }
        //if step value is 1 then it will change to 2 and count will increase or decrease by 2
        else{
            stepValue = 2
            step2Outlet.setTitle("Step = 1", for: .normal)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}
