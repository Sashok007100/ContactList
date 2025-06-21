//
//  SectionsTableViewController.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 20.06.2025.
//

import UIKit

class SectionsTableViewController: UITableViewController {
    
    var mock: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
}
