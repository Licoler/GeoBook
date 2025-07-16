//
//  CountryTableViewController.swift
//  GeoBook
//
//  Created by Alexandr Artemov on 15.07.2025.
//

import UIKit

final class CountryTableViewController: UITableViewController {

    
    private let mock = Country.getMock()
        
    }

    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
}
