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
    
    static func getMock() -> [Person] {
        var contacts: [Person] = []
        
        var availableNames = DataStore.names
        var availableSurnames = DataStore.surnames
        var availablePhones = DataStore.phoneNumbers
        var availableEmails = DataStore.emails
        
        let count = min(
            availableNames.count,
            availableSurnames.count,
            availablePhones.count,
            availableEmails.count
        )
        
        for _ in 0...count {
            guard
                let name = availableNames.randomElement(),
                let surname = availableSurnames.randomElement(),
                let phone = availablePhones.randomElement(),
                let email = availableEmails.randomElement()
            else {
                break
            }
            
            availableNames.removeAll { $0 == name }
            availableSurnames.removeAll { $0 == surname }
            availablePhones.removeAll { $0 == phone }
            availableEmails.removeAll { $0 == email }
            
            contacts.append(
                Person(
                    name: name,
                    surname: surname,
                    phone: phone,
                    email: email
                )
            )
        }
        
        return contacts
    }
}
