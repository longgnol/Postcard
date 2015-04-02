//
//  ViewController.swift
//  Postcard
//
//  Created by long nguyen on 3/4/15.
//  Copyright (c) 2015 Long Nguyen. All rights reserved.
//
//  Comment added to test commits

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false //shows message label when send mail button is pressed
        messageLabel.text = enterMessageTextField.text //sets message label to display text from message field
        messageLabel.textColor = UIColor.redColor() //sets text color to red
        
        nameLabel.hidden = false    //shows name label when send mail button is pressed
        nameLabel.text = enterNameTextField.text    //sets name label to display text from name field
        nameLabel.textColor = UIColor.blueColor()   //sets text color to blue
        
        enterNameTextField.text = "" //clears enter name text field when send mail button is pressed
        enterNameTextField.resignFirstResponder() //rem keyboard when send mail button is pressed
        
        enterMessageTextField.text = "" //clears message text field when send mail button is pressed
        enterMessageTextField.resignFirstResponder()    //rem keyboard when send mail button is pressed
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

    
}

