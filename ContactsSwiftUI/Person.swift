//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by Igor Denisiuk on 8.04.21.
//

import SwiftUI

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
                
        for index in 0..<names.count {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum SystemImage: String {
    case phone = "phone"
    case email = "tray"
    case avatar = "person.fill"
    case contacts = "person.3"
}

