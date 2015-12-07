//
//  Signup.swift
//  BengaliMatrimony
//
//  Created by Mohammad Haque on 11/24/15.
//  Copyright © 2015 shaun Haque. All rights reserved.
//

import Foundation
import UIKit
import Parse

class signup: UIViewController {
    
    @IBOutlet weak var usernametextfield: UITextField!
    
    @IBOutlet weak var passwordtextfield: UITextField!
   
    @IBOutlet weak var emailtextfield: UITextField!

    @IBAction func loginbutton(sender: AnyObject) {
        
        login()
    
    }
    
    func login() {
//        var user = PFUser()
//        user.username = usernametextfield.text!
//        user.password = passwordtextfield.text!
//        
//        PFUser.logInWithUsernameInBackground(usernametextfield.text, password: passwordtextfield.text, block: {
//        
//            (User : PFUser?, Error : NSError?) -> Void in
//            
//            if Error == nil {
//                
//            }
//            
//            
//        })
    }
    
    @IBAction func signupbutton(sender: AnyObject) {
        
        Signup()
        
    }
    
    func Signup() {
       
        var user = PFUser()
        user.username = usernametextfield.text!
        user.password = passwordtextfield.text!
        user.email = emailtextfield.text!
        
        user.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            if error == nil {
                // Hooray! Let them use the app now.
            } else {
                // Examine the error object and inform the user.
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}