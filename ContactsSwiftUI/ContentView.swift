//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Igor Denisiuk on 8.04.21.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: SystemImage.contacts.rawValue)
                    Text("Contact")
            }
            
            SectionsContacts(contacts: contacts)
                    .tabItem {
                        Image(systemName: SystemImage.phone.rawValue)
                        Text("Contacts")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
