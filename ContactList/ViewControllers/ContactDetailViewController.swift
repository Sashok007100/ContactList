//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Alexandr Artemov on 20.06.2025.
//

import UIKit

final class ContactDetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var mock: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = mock.fullName
        phoneLabel.text = "Phone: \(mock.phone)"
        emailLabel.text = "Email: \(mock.email)"
    }
}
