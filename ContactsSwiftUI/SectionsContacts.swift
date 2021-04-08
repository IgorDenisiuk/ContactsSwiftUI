//
//  SectionsContacts.swift
//  ContactsSwiftUI
//
//  Created by Igor Denisiuk on 8.04.21.
//

import SwiftUI

struct SectionsContacts: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header:
                                Text("\(contact.fullName)")) {
                        RowView(image: SystemImage.phone.rawValue,
                                contact: contact.phoneNumber
                        )
                        RowView(image: SystemImage.email.rawValue,
                                contact: contact.email
                        )
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct SectionsContacts_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContacts(contacts: Person.getContactList())
    }
}
