//
//  ViewController.swift
//  GeoBook
//
//  Created by Альбек Халапов on 15.07.2025.
//

import UIKit

struct PersonalData {
    let username: String
    let password: String
    let email: String
}

final class RegisterScreenViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    var personalData: PersonalData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Background
        let imageView = UIImageView(frame: view.bounds)
        imageView.image = UIImage(named: "earthBackground")
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        view.sendSubviewToBack(imageView)
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = view.bounds
        view.addSubview(blurView)
        view.sendSubviewToBack(blurView)
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        emailTextField.delegate = self
        
        // MARK: - Keyboard
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    // MARK: - Private Methods
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle:
                .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
        
    private func validateAndSaveData() -> Bool {
        guard let username = userNameTextField.text, !username.isEmpty,
        let password = passwordTextField.text, !password.isEmpty,
        let email = emailTextField.text, !email.isEmpty else {
            showAlert(message: "Все поля должны быть заполнены")
            return false
        }
            
        let emailLowercased = email.lowercased()
        if !emailLowercased.contains("@") ||
            (!emailLowercased.contains("mail.ru") && !emailLowercased.contains("gmail.com")) {
            showAlert(message: "Некорректный email")
            return false
        }
            
        if password.count < 8 {
            showAlert(message: "Пароль должен быть не менее 8 символов")
            return false
        }
            
        if password.first(where: { $0.isUppercase }) == nil {
            showAlert(message: "Пароль должен содержать хотя бы одну заглавную букву")
            return false
        }
        let digits = password.filter { $0.isNumber }
        if Set(digits).count != digits.count {
            showAlert(message: "Пароль не должен содержать повторяющиеся цифры")
            return false
        }
            
            
        personalData = PersonalData(username: username, password: password, email: email)
        return true
    }
        
        @IBAction func registerButtonTapped(_ sender: UIButton) {
            if validateAndSaveData() {
            }
        }
        
    }

