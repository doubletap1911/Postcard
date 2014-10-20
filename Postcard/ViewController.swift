//
//  ViewController.swift
//  Postcard
//
//  Created by Mike on 10/13/14.
//  Copyright (c) 2014 Mike Paxton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTestField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailbuttonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTestField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTestField.text = ""
        enterMessageTestField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

