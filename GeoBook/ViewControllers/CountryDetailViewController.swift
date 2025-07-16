//
//  CountryDetailViewController.swift
//  GeoBook
//
//  Created by Alexandr Artemov on 15.07.2025.
//

import UIKit

final class CountryDetailViewController: UIViewController {
    
    @IBOutlet var flagImageView: UIImageView!
    @IBOutlet var capitalLabel: UILabel!
    @IBOutlet var countryPhoneCodeLabel: UILabel!
    @IBOutlet var countryAreaLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    
    var mock: Country!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    
    private func configureUI() {
        title = mock.name
        flagImageView.image = UIImage(named: mock.image) ?? UIImage(named: "NoPhoto")
        capitalLabel.text = "Столица: \(mock.capital)"
        countryPhoneCodeLabel.text = "Код страны: \(mock.countryPhoneCode)"
        countryAreaLabel.text = "Площадь страны: \(mock.countryArea) км²"
        currencyLabel.text = "Местная валюта: \(mock.currency)"
    }
    }
}
