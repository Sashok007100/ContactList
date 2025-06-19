//
//  Person.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 19.06.2025.
//
struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
