//
//  ProfileViewController.swift
//  GeoBook
//
//  Created by Альбек Халапов on 18.07.2025.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var userNameProfile: UITextField!
    @IBOutlet var passwordProfile: UITextField!
    @IBOutlet var emailProfile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = RegisterScreenViewController.registeredUser {
            userNameProfile.text = user.username
            passwordProfile.text = user.password
            emailProfile.text = user.email
        }
    }
    
    // MARK: - Actions
    @IBAction func saveChangesTapped(_ sender: UIButton) {
        guard var user = RegisterScreenViewController.registeredUser else { return }

        guard let newUsername = userNameProfile.text,
              let newPassword = passwordProfile.text,
              let newEmail = emailProfile.text,
              !newUsername.isEmpty,
              !newPassword.isEmpty,
              !newEmail.isEmpty else {
            showAlert(message: "Все поля должны быть заполнены")
            return
        }

        user.username = newUsername
        user.password = newPassword
        user.email = newEmail
            
        RegisterScreenViewController.registeredUser = user
        
        showAlert(message: "Изменения сохранены!")
    }
        
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        // позже добавлю
    }
    
    // MARK: - Private Methods
    private func showAlert(message: String) {
        let alert = UIAlertController(
            title: nil,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}


