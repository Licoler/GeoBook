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

        
        showAlert(message: "Изменения сохранены!") {
            self.userNameProfile.text = ""
            self.passwordProfile.text = ""
            self.emailProfile.text = ""
        }
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


