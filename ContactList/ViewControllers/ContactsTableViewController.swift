//
//  ContactsTableViewController.swift
//  ContactList
//
//  Created by Alexandr Artemov on 19.06.2025.
//

import UIKit

final class ContactsTableViewController: UITableViewController {
    
    private let mock = Person.getMock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - UITableViewDataSource
extension ContactsTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mock.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        config.text = mock[indexPath.row].fullName
        
        cell.contentConfiguration = config
        return cell
    }
}

