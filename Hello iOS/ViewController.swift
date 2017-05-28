//
//  ViewController.swift
//  Hello iOS
//
//  Created by Kevin Kuwata on 5/28/17.
//  Copyright © 2017 Kevin Kuwata. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var state = 1;
    
//: All Code we are writting for hello world here
    //two outlets, input and outut
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var input: UITextField!

    
    /// UI button wich is named action
    /// Prints Hello <name> from the input of the text field
    /// Updates with each button press
    @IBAction func action(_ sender: UIButton) {
        output.text = "Hello, " + (input.text)!;

    }

    @IBAction func Color(_ sender: UIButton) {
        sender.backgroundColor = UIColor.green;
    }

    //button outlet for toggle
    @IBOutlet weak var toggle: UIButton!
    @IBAction func changed(_ sender: UIButton) {
        //if pressed in do this code:
        if(state == 1){
            toggle.setTitle("ON", for: .normal);
            state = 2;
        }
        else{
            toggle.setTitle("OFF", for: .normal);
            state = 1;
        }
    }

//: We do not touch for hello world
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.input.delegate = self // for keyboard hide
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   
    }
    
    
    ///: Code to hide keyboard
    /// Make sure to set up class:
    /*
     class ViewController: UIViewController, UITextFieldDelegate {

     adding : UITextFieldDelegate
     
     
     inside override func viewDidLoad(){
     }
     
     adding :        self.input.delegate = self // for keyboard hide

     
     then come down in here
     */
    
    //actual hiding keyboard on touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    } //set boolean to true
    
    //for return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input.resignFirstResponder();
        return true
    }
    
}

