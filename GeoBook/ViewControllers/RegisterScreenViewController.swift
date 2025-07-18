//
//  ViewController.swift
//  GeoBook
//
//  Created by Альбек Халапов on 15.07.2025.
//
// Контроллер экрана регистрации пользователя

import UIKit

final class RegisterScreenViewController: BaseViewController {
    
    // MARK: - Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        emailTextField.delegate = self
    }
    // Очищаем поля ввода при каждом появлении экрана
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userNameTextField.text = ""
        passwordTextField.text = ""
        emailTextField.text = ""
    }
    
    // MARK: - Private Methods
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
    
    private func isValidPassword(_ password: String) -> Bool {
        let pattern = "^(?=.*[A-Z]).{8,}$"
        let regex = try? NSRegularExpression(pattern: pattern)
        let range = NSRange(location: 0, length: password.utf16.count)
        return regex?.firstMatch(in: password, options: [], range: range) != nil
    }
    
    private func validateAndSaveData() -> Bool {
        guard let username = userNameTextField.text, !username.isEmpty,
              let password = passwordTextField.text, !password.isEmpty,
              let email = emailTextField.text, !email.isEmpty else {
            showAlert(message: "Все поля должны быть заполнены") {
                self.passwordTextField.text = ""
            }
            return false
        }
        
        let emailLowercased = email.lowercased()
        if !emailLowercased.contains("@") ||
            (!emailLowercased.contains("mail.ru") && !emailLowercased.contains("gmail.com")) {
            showAlert(message: "Некорректный email") {
                self.emailTextField.text = ""
            }
            return false
        }
        
        if !isValidPassword(password) {
            showAlert(message: "Пароль должен быть не менее 8 символов и содержать хотя бы одну заглавную букву") {
                self.passwordTextField.text = ""
            }
            return false
        }
        
        let digits = password.filter { $0.isNumber }
        if Set(digits).count != digits.count {
            showAlert(message: "Пароль не должен содержать повторяющиеся цифры") {
                self.passwordTextField.text = ""
            }
            return false
        }
        return true
    }
    
    // MARK: - Actions
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        if validateAndSaveData() {
            //место для performSegue
        }
    }
}
extension RegisterScreenViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
