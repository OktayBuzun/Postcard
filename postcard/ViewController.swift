//
//  ViewController.swift
//  postcard
//
//  Created by Mustafa Buzun on 28/06/2017.
//  Copyright © 2017 mechtatel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTExtField: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        messageLabel.isHidden = false
        nameLabel.isHidden = false
        
        messageLabel.text = enterMessageTextfield.text
        messageLabel.textColor = UIColor.green
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        
        // adding a comment here to test comits
        
        nameLabel.text = enterNameTExtField.text
        nameLabel.textColor = UIColor.blue
        enterNameTExtField.text = ""
        enterNameTExtField.resignFirstResponder()
        
        mailButton.setTitle("Mail sent", for: UIControlState.normal)
    }
    

}

