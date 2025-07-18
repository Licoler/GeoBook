//
//  LoginScreenViewController.swift
//  GeoBook
//
//  Created by Альбек Халапов on 17.07.2025.
//
//  Контроллер экрана авторизации пользователя

import UIKit

final class LoginScreenViewController: BaseViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var userData: UserData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "loginSegue", isValidInput() {
            return true
        }
        return true
    }
    
    // MARK: - Private Method
    private func showAlert(message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: "Ошибка",
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        })
        present(alert, animated: true)
    }
    
    private func isValidInput() -> Bool {
        guard userData != nil else {
            showAlert(message: "Пользователь не найден. Пожалуйста, зарегистрируйтесь.")
            return false
        }
        
        guard let enteredUsername = userNameTF.text,
              let enteredPassword = passwordTF.text,
              !enteredUsername.isEmpty,
              !enteredPassword.isEmpty else {
            showAlert(message: "Пожалуйста, введите логин и пароль")
            return false
        }
        
        guard userData?.username == enteredUsername,
              userData?.password == enteredPassword
        else {
            showAlert(message: "Неверный логин или пароль")
            return false
        }
        
        return true
    }
    
    }
}
extension LoginScreenViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
