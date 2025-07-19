//
//  ProfileViewController.swift
//  GeoBook
//
//  Created by Альбек Халапов on 18.07.2025.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet var userNameProfile: UITextField!
    @IBOutlet var passwordProfile: UITextField!
    @IBOutlet var emailProfile: UITextField!
    
    var userData: UserData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameProfile.text = userData.username
        passwordProfile.text = userData.password
        emailProfile.text = userData.email
    }
    
    // MARK: - Actions
    @IBAction func saveChangesTapped(_ sender: UIButton) {
        guard let newUsername = userNameProfile.text,
              let newPassword = passwordProfile.text,
              let newEmail = emailProfile.text,
              !newUsername.isEmpty,
              !newPassword.isEmpty,
              !newEmail.isEmpty else {
            showAlert(message: "Все поля должны быть заполнены")
            return
        }

        userData.username = newUsername
        userData.password = newPassword
        userData.email = newEmail
        
        showAlert(message: "Изменения сохранены!") 
    }
    
    // MARK: - Private Methods
    private func showAlert(message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: nil,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        })
        present(alert, animated: true)
    }
}


