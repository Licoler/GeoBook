//
//  BaseViewController.swift
//  GeoBook
//
//  Created by Альбек Халапов on 17.07.2025.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        addTapToHideKeyboard()
    }
    // MARK: - UI
    func setupBackground() {
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
    }
    // MARK: - Keyboard
    func addTapToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}
