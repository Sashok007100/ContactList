//
//  SectionsTableViewController.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 20.06.2025.
//

import UIKit

final class SectionsTableViewController: UITableViewController {
    
    var mock: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        mock.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
}
