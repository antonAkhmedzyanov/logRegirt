//
//  ViewController.swift
//  logRegirt
//
//  Created by Anton Akhmedzyanov on 16.09.2022.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    var userName = "Anton"
    let password = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.name = userName + "!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    //MARK: - IBActions
    @IBAction func pressedLogin() {
        if userName == userNameTextField.text && password == passwordTextField.text {
            performSegue(withIdentifier: "openWelcome", sender: nil)
        } else {
            showAlert(with: "error", and: "login or password isn't correct")
        }
    }
    @IBAction func pressedForgotname() {
        showAlert(with: "Oops", and: "your name is Anton")
    }
    
    @IBAction func pressedForgotPasword() {
        showAlert(with: "Oops", and: "your password is 1")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
   //MARK: - Private Methods
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

