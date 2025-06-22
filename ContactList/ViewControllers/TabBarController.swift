//
//  TabBarController.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 20.06.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let mock = Person.getMock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        viewControllers?.forEach { viewController in
            let navigationVC = viewController as? UINavigationController
            let contactTableVC = navigationVC?.topViewController as? ContactsTableViewController
            let sectionsTableVC = navigationVC?.topViewController as? SectionsTableViewController
            
            contactTableVC?.mock = mock
            sectionsTableVC?.mock = mock
        }
    }
}
