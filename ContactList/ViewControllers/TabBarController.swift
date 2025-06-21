//
//  TabBarController.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 20.06.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    
    let mock = Person.getMock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers?.forEach { viewController in
            if let contactTableVC = viewController as? ContactsTableViewController {
                contactTableVC.mock = mock
            } else if let sectionsTableVC = viewController as? SectionsTableViewController {
                sectionsTableVC.mock = mock
            }
        }
    }
}
