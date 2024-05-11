//
//  NextViewController.swift
//  login Screen
//
//  Created by Иван Юрьев on 06.05.2024.
//

import UIKit

class NextViewController: UIViewController {
    
    var incomingText = ""
    
    @IBAction func logOutButtonAction() {
        dismiss(animated: true)
    }
    
    @IBOutlet weak var helloLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        helloLabel.text = "Привет " + incomingText + "!"
    }
}
