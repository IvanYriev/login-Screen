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
    
    private let userName: String = "User"
    private let userPassword: String = "Password"
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        //
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? NextViewController
        vc?.incomingText = "Привет " + userName + "!"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let correctName: Bool = checkUserName(userName: userTextField.text ?? "")
        let correctPassword: Bool = checkUserPassword(userPassword: passwordTextField.text ?? "")
        
        if (correctName && correctPassword) {
            return true
        }
        else {
            if !correctName {
                showAlert(forName: true, title: "Имя не верное", message: "Пожалуйста введите правильное имя пользователя")
            }
            else if !correctPassword {
                showAlert(forName: false, title: "Пароль не верный", message: "Пожалуйста введите правильный пароль")
            }
            
            return false
        }
    }
    
    private func showAlert(forName: Bool?, title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Хорошо!", style: .default) { _ in
            if let forNameValue = forName {
                if forNameValue {
                    self.userTextField.text = nil
                }
                else {
                    self.passwordTextField.text = nil
                }
            }
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true)
    }
    
    func checkUserName(userName name: String) -> Bool {
        return userName.lowercased() == name.lowercased()
    }
    
    func checkUserPassword(userPassword password: String) -> Bool {
        return userPassword.lowercased() == password.lowercased()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func forgotUserNameButtonAction() {
        showAlert(forName: nil, title: "Подсказка!", message: "Имя должно быть таким: \(userName). В любом регистре!")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(forName: nil, title: "Подсказка!", message: "Пароль должен быть таким: \(userPassword). В любом регистре!")
    }
}
