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
    
    var rows: [String] {
        [phone, email]
    }
    
    static func getMock() -> [Person] {
        var contacts: [Person] = []
        
        let dataStore = DataStore.shared
        
        let count = min(
            dataStore.names.count,
            dataStore.surnames.count,
            dataStore.phone.count,
            dataStore.emails.count
        )
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phone = dataStore.phone.shuffled()
        let emails = dataStore.emails.shuffled()
        
        for index in 0..<count {
            contacts.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phone[index],
                    email: emails[index]
                )
            )
        }
        
        return contacts
    }
}
