//
//  ContactDetails.swift
//  ContactsSwiftUI
//
//  Created by Igor Denisiuk on 8.04.21.
//

import SwiftUI

struct ContactDetails: View {
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: SystemImage.avatar.rawValue)
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            List {
                RowView(image: SystemImage.phone.rawValue, contact: person.phoneNumber)
                RowView(image: SystemImage.email.rawValue, contact: person.email)
            }
        }
        .navigationBarTitle("\(person.fullName)")
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person.getContactList().first!)
    }
}
