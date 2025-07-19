//
//  TopDevelopersViewController.swift
//  GeoBook
//
//  Created by Альбек Халапов on 18.07.2025.
//

import UIKit

final class TopDevelopersViewController: UIViewController {

    @IBOutlet weak var profileImageViewFirst: UIImageView!
    @IBOutlet weak var profileImageViewSecond: UIImageView!

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        [profileImageViewFirst, profileImageViewSecond].forEach { imageView in
            imageView?.layer.cornerRadius = imageView!.frame.width / 2
            imageView?.clipsToBounds = true
        }
    }
}
