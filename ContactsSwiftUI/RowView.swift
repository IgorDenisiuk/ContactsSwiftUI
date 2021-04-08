//
//  RowView.swift
//  ContactsSwiftUI
//
//  Created by Igor Denisiuk on 8.04.21.
//

import SwiftUI

struct RowView: View {
    let image: String
    let contact: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(image: SystemImage.email.rawValue, contact: Person.getContactList().first!.email)
    }
}
