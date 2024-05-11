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
        //helloLabel.text = "Hello, " + incomingText
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //helloLabel.text = "jhgjkhkj"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
