//
//  ContactList.swift
//  ContactsSwiftUI
//
//  Created by Igor Denisiuk on 8.04.21.
//

import SwiftUI

struct ContactList: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                NavigationLink(
                    destination: ContactDetails(person: person)) {
                    Text("\(person.fullName)")
                    }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Person.getContactList())
    }
}
