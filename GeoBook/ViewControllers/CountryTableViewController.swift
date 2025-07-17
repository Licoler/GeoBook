//
//  CountryTableViewController.swift
//  GeoBook
//
//  Created by Alexandr Artemov on 15.07.2025.
//

import UIKit

final class CountryTableViewController: UITableViewController {
    
    private let mock = Country.getMock()
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
              let countryDetailVC = segue.destination as? CountryDetailViewController
        else {
            return
        }
        
        countryDetailVC.mock = mock[indexPath.section].countries[indexPath.row]
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        mock.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        mock[section].name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mock[section].countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "сountryDetailCell",
            for: indexPath
        )
        var config = cell.defaultContentConfiguration()
        
        config.text = mock[indexPath.section].countries[indexPath.row].name
        cell.accessoryType = .disclosureIndicator
        
        cell.contentConfiguration = config
        return cell
    }
}
