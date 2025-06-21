//
//  SectionsTableViewController.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 20.06.2025.
//

import UIKit

final class SectionsTableViewController: UITableViewController {
    
    var mock: [Person]!
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        mock.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mock[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        mock[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "contactDetailCell",
            for: indexPath
        )
        var config = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            config.image = UIImage(systemName: "phone")
            config.text = mock[indexPath.section].rows[indexPath.row]
        } else {
            config.image = UIImage(systemName: "tray")
            config.text = mock[indexPath.section].rows[indexPath.row]
        }
        
        cell.contentConfiguration = config
        return cell
    }
}

// MARK: - UITableViewDelegate
extension SectionsTableViewController {
    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        false
    }
}
