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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let navigationVC = viewController as? UINavigationController {
                guard
                    let profileVC = navigationVC.topViewController as? ProfileViewController
                else {
                    return
                }
                profileVC.userData = userData
            }
        }

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
    
    // MARK: - Action
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        
        if let registerVC = segue.source as? RegisterScreenViewController {
            userData = UserData(
                username: registerVC.userNameTextField.text ?? "",
                password: registerVC.passwordTextField.text ?? "",
                email: registerVC.emailTextField.text ?? ""
            )
        } else if let profileVC = segue.source as? ProfileViewController {
            userData = profileVC.userData
        }
    }
}

extension LoginScreenViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
