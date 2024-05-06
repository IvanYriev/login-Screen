//
//  ViewController.swift
//  login Screen
//
//  Created by Иван Юрьев on 06.05.2024.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    

    
    
    @IBSegueAction func toNextVCSeque(_ coder: NSCoder) -> NextViewController? {
        
        return NextViewController(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logInButtonActoin() {
        
    }
    
    @IBAction func forgotUserNameButtonAction() {
        
    }
    
    @IBAction func forgotPasswordButtonAction() {
        
    }
    
    
    
}
