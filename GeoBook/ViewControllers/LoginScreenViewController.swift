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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
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
    
    // MARK: - Action
    @IBAction func signInButtonTapped(_ sender: Any) {
        guard let enteredUsername = userNameTF.text,
              let enteredPassword = passwordTF.text,
              !enteredUsername.isEmpty,
              !enteredPassword.isEmpty else {
            showAlert(message: "Пожалуйста, введите логин и пароль")
            return
        }

        guard let savedUser = RegisterScreenViewController.registeredUser else {
            showAlert(message: "Пользователь не найден. Пожалуйста, зарегистрируйтесь.")
            return
        }
               
        if savedUser.username == enteredUsername && savedUser.password == enteredPassword {
            // performSegue
        } else {
            showAlert(message: "Неверный логин или пароль")
        }
    }
}
extension LoginScreenViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
